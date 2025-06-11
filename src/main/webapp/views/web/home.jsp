<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ | IVY moda</title>
</head>
<body>
    <!-- Section 1 -->
    <div class="section-1">
        <div class="container">
            <div class="swiper swiperSection1">
                <div class="swiper-wrapper">
                    <div class="swiper-slide inner-item">
                        <a href="#">
                            <img src="<c:url value='/templates/web/images/banner-4.webp'/>" alt="">
                        </a>
                    </div>
                    <div class="swiper-slide inner-item">
                        <a href="#">
                            <img src="<c:url value='/templates/web/images/banner-1.webp'/>" alt="">
                        </a>
                    </div>
                    <div class="swiper-slide inner-item">
                        <a href="#">
                            <img src="<c:url value='/templates/web/images/banner-2.webp'/>" alt="">
                        </a>
                    </div>
                    <div class="swiper-slide inner-item">
                        <a href="#">
                            <img src="<c:url value='/templates/web/images/banner-3.webp'/>" alt="">
                        </a>
                    </div>
                    <div class="swiper-slide inner-item">
                        <a href="#">
                            <img src="<c:url value='/templates/web/images/banner-5.webp'/>" alt="">
                        </a>
                    </div>
                </div>
                <div class="swiper-button-next"><i class="bi bi-arrow-right"></i></div>
                <div class="swiper-button-prev"><i class="bi bi-arrow-left"></i></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
    <!-- End Section 1 -->

    <!-- Section 2: New Arrival -->
    <div class="section-2">
        <div class="container">
            <h2 class="box-title">
                NEW ARRIVAL
            </h2>
            <div class="swiper swiperSection2">
                <div class="swiper-wrapper">
                    <c:forEach var="product" items="${newArrivals}">
                        <div class="swiper-slide product-item">
                            <div class="inner-tag tag-uppercase">
                                New
                            </div>
                            <div class="inner-image">
                                <a href="#">
                                    <img src="<c:url value='${product.productImage}'/>" alt="${product.productName}">
                                    <img src="<c:url value='${product.productImage}'/>" alt="${product.productName}" class="hover-img">
                                </a>
                            </div>
                            <div class="inner-content">
                                <div class="inner-meta">
                                    <div class="inner-color">
                                        <div class="inner-box" style="background-color: ${product.productColor};"></div>
                                        <div class="inner-box"><i class="bi bi-check2"></i></div>
                                    </div>
                                    <div class="inner-favorite"><i class="bi bi-heart"></i></div>
                                </div>
                                <h3 class="inner-title">
                                    <a href="#">${product.productName}</a>
                                </h3>
                                <div class="price-product">
                                    <div class="inner-price">
                                        <div class="inner-price-new">${product.productPrice}đ</div>
                                        <div class="inner-price-old">${product.productPrice * 1.3}đ</div>
                                    </div>
                                    <div class="inner-bag dropdown">
                                        <a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-offset="0, 20">
                                            <i class="bi bi-bag"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">S</a></li>
                                            <li><a class="dropdown-item" href="#">M</a></li>
                                            <li><a class="dropdown-item" href="#">L</a></li>
                                            <li><a class="dropdown-item" href="#">XL</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-button-next swiper-button-next-custom"><i class="bi bi-arrow-right"></i></div>
                <div class="swiper-button-prev swiper-button-prev-custom"><i class="bi bi-arrow-left"></i></div>
            </div>
            <div class="inner-button">
                <a href="all-product" class="button-outline">Xem tất cả</a>
            </div>
        </div>
    </div>
    <!-- End Section 2 -->

    <!-- Section 2 more: Best Seller -->
    <div class="section-2">
        <div class="container">
            <h2 class="box-title">
                RẠNG RỠ THÁNG 3 ƯU ĐÃI LỚN - GIẢM 50% CÁC SẢN PHẨM
            </h2>
            <div class="swiper swiperSection2">
                <div class="swiper-wrapper">
                    <c:forEach var="product" items="${bestSellers}">
                        <div class="swiper-slide product-item">
                            <div class="inner-tag">
                                Best Seller
                            </div>
                            <div class="inner-discount">-50<span>%</span></div>
                            <div class="inner-image">
                                <a href="#">
                                    <img src="<c:url value='${product.productImage}'/>" alt="${product.productName}">
                                    <img src="<c:url value='${product.productImage}'/>" alt="${product.productName}" class="hover-img">
                                </a>
                            </div>
                            <div class="inner-content">
                                <div class="inner-meta">
                                    <div class="inner-color">
                                        <div class="inner-box" style="background-color: ${product.productColor};"></div>
                                        <div class="inner-box"><i class="bi bi-check2"></i></div>
                                    </div>
                                    <div class="inner-favorite"><i class="bi bi-heart"></i></div>
                                </div>
                                <h3 class="inner-title">
                                    <a href="#">${product.productName}</a>
                                </h3>
                                <div class="price-product">
                                    <div class="inner-price">
                                        <div class="inner-price-new">${product.productPrice / 2}đ</div>
                                        <div class="inner-price-old">${product.productPrice}đ</div>
                                    </div>
                                    <div class="inner-bag dropdown">
                                        <a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-offset="0, 20">
                                            <i class="bi bi-bag"></i>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">S</a></li>
                                            <li><a class="dropdown-item" href="#">M</a></li>
                                            <li><a class="dropdown-item" href="#">L</a></li>
                                            <li><a class="dropdown-item" href="#">XL</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="swiper-button-next swiper-button-next-custom"><i class="bi bi-arrow-right"></i></div>
                <div class="swiper-button-prev swiper-button-prev-custom"><i class="bi bi-arrow-left"></i></div>
            </div>
            <div class="inner-button">
                <a href="all-product" class="button-outline">Xem tất cả</a>
            </div>
        </div>
    </div>
    <!-- End Section 2 more -->

    <!-- Section 3 -->
    <div class="section-3">
        <div class="container">
            <h2 class="box-title">
                NEW COLLECTION 2025
            </h2>
            <div class="inner-wrap">
                <div class="inner-item">
                    <a href="#">
                        <img src="<c:url value='/templates/web/images/image-1.webp'/>" alt="">
                    </a>
                </div>
                <div class="inner-item">
                    <a href="#">
                        <img src="<c:url value='/templates/web/images/image-2.webp'/>" alt="">
                    </a>
                </div>
                <div class="inner-item">
                    <a href="#">
                        <img src="<c:url value='/templates/web/images/image-3.webp'/>" alt="">
                    </a>
                </div>
                <div class="inner-item">
                    <a href="#">
                        <img src="<c:url value='/templates/web/images/image-4.webp'/>" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Section 3 -->
</body>
</html>