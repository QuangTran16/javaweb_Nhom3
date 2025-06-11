package dao;

import java.util.List;
import model.OrderInfo;

public interface OrderDAO {
    List<OrderInfo> getRecentOrders(int limit);
}