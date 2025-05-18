package dao;

import java.util.List;

import model.ProductObject;

public interface IProductDAO {
	List<ProductObject> getAllProducts();
	ProductObject getProductById(int id);
	boolean insertProduct(ProductObject product);
	boolean updateProduct(ProductObject product);
	boolean deleteProduct(int id);
	
	 
}
