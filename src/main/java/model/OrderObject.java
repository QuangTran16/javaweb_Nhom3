package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderObject {

    private int orderId;
    private Date orderDate;
    private Integer userId;
    private double totalAmount;
    private String orderStatus;
    private String paymentStatus;
    private String paymentMethod;
    private String orderNote;
    private UserObject userObject;
    private List<OrderDetailObject> orderDetailList;
}
