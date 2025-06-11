package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.OrderDAO;
import model.OrderInfo;
import util.DBUtil;

public class OrderDAOImpl implements OrderDAO {
    @Override
    public List<OrderInfo> getRecentOrders(int limit) {
        List<OrderInfo> orderList = new ArrayList<>();
        String sql = "SELECT u.user_fullname, p.product_name, od.price, o.order_status, o.order_date " +
                     "FROM `Order` o " +
                     "JOIN `OrderDetail` od ON o.order_id = od.order_id " +
                     "JOIN `Product` p ON od.product_id = p.id " +
                     "JOIN `users` u ON o.user_id = u.user_id " +
                     "ORDER BY o.order_date DESC LIMIT ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, limit);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    OrderInfo order = new OrderInfo();
                    order.setCustomerName(rs.getString("user_fullname"));
                    order.setProductName(rs.getString("product_name"));
                    order.setPrice(rs.getDouble("price"));
                    order.setOrderStatus(rs.getString("order_status"));
                    order.setOrderDate(rs.getString("order_date"));
                    orderList.add(order);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }
}
