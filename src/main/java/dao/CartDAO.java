package dao;

import java.util.List;

import model.ProductObject;



public interface CartDAO {
	List<ProductObject> getProducts(int userId);
    void addToCart(int userId, int productId);
    void updateCart(int userId, int productId, int quantity);
    void deleteFromCart(int userId, int productId);
}
