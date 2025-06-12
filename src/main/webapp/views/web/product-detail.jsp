<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm | IVY moda</title>
</head>
<body>
    <!-- Product Detail -->
    <div class="product-detail">
        <div class="container">
            <div class="box-breadcumb">
                <nav>
                    <ul>
                        <li><a href="<c:url value='/trang-chu'/>">Trang chủ<i class="fa-solid fa-minus"></i></a></li>
                        <li><a href="#">${product.productCategory}<i class="fa-solid fa-minus"></i></a></li>
                        <li><a href="#">${product.productName}</a></li>
                    </ul>
                </nav>
            </div>
            <c:if test="${not empty product}">
                <div class="inner-wrap">
                    <div class="inner-image">
                        <img src="<c:url value='${product.productImage}'/>" alt="${product.productName}">
                    </div>
                    <div class="inner-content">
                        <h1 class="inner-title">${product.productName}</h1>
                        <div class="inner-rating">
                            <div class="inner-code"> ${product.productCode}</div>
                            <div class="inner-stars">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                (0 đánh giá)
                            </div>
                        </div>
                        <div class="inner-price">${product.productPrice}đ</div>
                        <div class="inner-color">
                            <div class="inner-label">Màu sắc: ${product.productColor}</div>
                            <div class="inner-item-color">
                                <div class="inner-item" style="background-color: ${product.productColor};">
                                    <i class="fa-solid fa-check"></i>
                                </div>
                            </div>
                        </div>
                        <div class="inner-list-size">
                            <c:forEach items="${fn:split(product.productSize, ',')}" var="size">
                                <div class="inner-item">${size}</div>
                            </c:forEach>
                        </div>
                        <div class="inner-quantity">
                            <label for="">Số lượng</label>
                            <div class="quantity">
                                <button class="section-5-down">-</button>
                                <input type="number" min="0" value="1" max="${product.productQuantity}">
                                <button class="section-5-up">+</button>
                            </div>
                        </div>
                        <div class="inner-actions">
                            <div class="btn btn-add-to-cart">Thêm vào giỏ</div>
                            <div class="btn btn-buy">Mua hàng</div>
                            <div class="btn btn-add-to-favorite">
                                <i class="fa-regular fa-heart"></i>
                            </div>
                        </div>
                        <div class="inner-desc">
                            <label for="">Mô tả sản phẩm</label>
                            <p>${product.productDescription}</p>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${empty product}">
                <div class="inner-wrap">
                    <p>Sản phẩm không tồn tại hoặc đã bị xóa.</p>
                </div>
            </c:if>
            <!-- Các phần "MUA CÙNG VỚI" và "Sản phẩm đã xem" có thể giữ nguyên hoặc cập nhật tương tự -->
        </div>
    </div>
    <!-- End Product Detail -->
</body>
</html>