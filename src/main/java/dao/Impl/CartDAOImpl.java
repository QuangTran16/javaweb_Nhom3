package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import model.ProductObject;
import util.DBUtil;



public class CartDAOImpl implements dao.CartDAO {
	
	

	@Override
    public List<ProductObject> getProducts(int userId) {
        List<ProductObject> products = new ArrayList<>();
        String sql = "SELECT p.* FROM cart c JOIN product p ON c.product_id = p.id WHERE c.user_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                ProductObject p = new ProductObject();
                p.setProductId(rs.getInt("id"));
	            p.setProductCode(rs.getString("product_code"));
	            p.setProductName(rs.getString("product_name"));
	            p.setProductImage(rs.getString("product_image"));
	            p.setProductPrice(rs.getDouble("product_price"));
	            p.setProductQuantity(rs.getInt("product_quantity"));
	            p.setProductColor(rs.getString("product_color"));
	            p.setProductSize(rs.getString("product_size"));
	            p.setProductDescription(rs.getString("product_description"));
	            p.setProductCategory(rs.getString("product_category"));
                products.add(p);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public void addToCart(int userId, int productId) {
        String sql = "INSERT INTO cart (user_id, product_id, quantity) VALUES (?, ?, 1) " +
                     "ON DUPLICATE KEY UPDATE quantity = quantity + 1";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, userId);
            stmt.setInt(2, productId);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateCart(int userId, int productId, int quantity) {
        String sql = "UPDATE cart SET quantity = ? WHERE user_id = ? AND product_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

        	stmt.setInt(1, quantity);
            stmt.setInt(2, userId);
            stmt.setInt(3, productId);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteFromCart(int userId, int productId) {
        String sql = "DELETE FROM cart WHERE user_id = ? AND product_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, userId);
            stmt.setInt(2, productId);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
