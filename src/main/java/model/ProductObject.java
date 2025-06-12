package model;

import java.util.Date;


import lombok.Data;

@Data
public class ProductObject {
	private int productId;
	private String productCode;
	private String productName;
	private String productImage;
	private double productPrice;
	private int productQuantity;
	private String productColor;
	private String productSize;
	private String productDescription;
	private String productCategory;
	private Date createdAt;
	private Date updateAt;
	private boolean isDeleted; // Thêm thuộc tính isDeleted
	
}
