package dao.Impl;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import dao.IProductDAO;
import model.ProductObject;
import util.DBUtil;


public class ProductImpl implements IProductDAO {
	
	
	
	private boolean exe(Connection conn, PreparedStatement pre) {
	    if (pre != null) {
	        try {
	            int results = pre.executeUpdate();

	            if (results == 0) {
	                conn.rollback();
	                return false;
	            }

	            conn.commit();
	            return true;
	        } catch (SQLException e) {
	            try {
	                conn.rollback();
	            } catch (SQLException ex) {
	                ex.printStackTrace();
	            }
	            e.printStackTrace();
	        }
	    }
	    return false;
	}


	@Override
	public List<ProductObject> getAllProducts() {
		List<ProductObject> list = new ArrayList<>();
	    String sql = "SELECT * FROM Product";
	    try (Connection conn = DBUtil.getConnection();
	    	PreparedStatement ps = conn.prepareStatement(sql)) {
	    	ResultSet rs = ps.executeQuery();
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
	            list.add(p);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return list;
	}

	@Override
	public ProductObject getProductById(int id) {
		String sql = "SELECT * FROM Product WHERE id = ?";
	    try (Connection conn = DBUtil.getConnection();
		    	PreparedStatement ps = conn.prepareStatement(sql)) {
	        ps.setInt(1, id);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
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
	            return p;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}

	@Override
	public boolean insertProduct(ProductObject product) {
		
		StringBuilder sql = new StringBuilder("INSERT INTO Product(");
		sql.append("product_code,product_name,product_image,");
		sql.append("product_price,product_quantity,product_color,product_size,");
		sql.append("product_description, product_category");
		sql.append(")");
		sql.append("VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
		
		//Biên dịch
		try {Connection conn = DBUtil.getConnection();
			PreparedStatement pre = conn.prepareStatement(sql.toString());
			
			// Tắt auto-commit để chủ động rollback nếu cần
	        conn.setAutoCommit(false);
	        
			pre.setString(1, product.getProductCode());
	        pre.setString(2, product.getProductName());
	        pre.setString(3, product.getProductImage());
	        pre.setDouble(4, product.getProductPrice());
	        pre.setInt(5, product.getProductQuantity());
	        pre.setString(6, product.getProductColor());
	        pre.setString(7, product.getProductSize());
	        pre.setString(8, product.getProductDescription());
	        pre.setString(9, product.getProductCategory());
	        
	        return this.exe(conn, pre);
	        
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}
		
		
		
		return false;
	}

	@Override
	public boolean updateProduct(ProductObject product) {
		StringBuilder sql = new StringBuilder("UPDATE Product SET ");
	    sql.append("product_code=?, product_name=?, product_image=?, ");
	    sql.append("product_price=?, product_quantity=?, product_color=?, ");
	    sql.append("product_size=?, product_description=?, product_category=? ");
	    sql.append("WHERE id=?");

	    try (Connection conn = DBUtil.getConnection();
	    		PreparedStatement pre = conn.prepareStatement(sql.toString())) {
	    	
	    	
	        conn.setAutoCommit(false);
	    	
	        pre.setString(1, product.getProductCode());
	        pre.setString(2, product.getProductName());
	        pre.setString(3, product.getProductImage());
	        pre.setDouble(4, product.getProductPrice());
	        pre.setInt(5, product.getProductQuantity());
	        pre.setString(6, product.getProductColor());
	        pre.setString(7, product.getProductSize());
	        pre.setString(8, product.getProductDescription());
	        pre.setString(9, product.getProductCategory());
	        pre.setInt(10, product.getProductId());

	        return exe(conn,pre);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}

	@Override
	public boolean deleteProduct(int id) {
		String sql = "DELETE FROM Product WHERE id=?";
	    try (Connection conn = DBUtil.getConnection();
	    		PreparedStatement pre = conn.prepareStatement(sql)) {
	        pre.setInt(1, id);
	        return exe(conn,pre);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	
	
	
	
}
