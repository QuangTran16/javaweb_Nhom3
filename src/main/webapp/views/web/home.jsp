<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
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

  <!-- Section 2 -->
  <div class="section-2">
    <div class="container">
      <h2 class="box-title">
        NEW ARRIVAL
      </h2>
      <div class="swiper swiperSection2">
        <div class="swiper-wrapper">
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-1.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-1-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Ocean Breeze Dress - Đầm lụa xòe</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.290.000đ</div>
                  <div class="inner-price-old">1.790.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-2.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-2-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">White Sonata Dress - Đầm suông Organza</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.390.000đ</div>
                  <div class="inner-price-old">1.890.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-3.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-3-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Butterfly Flare Dress - Đầm lụa họa tiết</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.490.000đ</div>
                  <div class="inner-price-old">1.990.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-4.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-4-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Floral Bodycon Dress - Đầm ôm họa tiết</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.090.000đ</div>
                  <div class="inner-price-old">1.590.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-5.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-5-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Graceful Bloom Dress - Đầm Tuytsi đuôi cá</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.390.000đ</div>
                  <div class="inner-price-old">1.890.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-6.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-6-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Graceful V Knit - Áo Gile Tuytsi</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">890.000đ</div>
                  <div class="inner-price-old">1.390.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-7.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-7-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Sea Breeze Skirt - Chân váy xòe tafta</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">690.000đ</div>
                  <div class="inner-price-old">1.190.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-8.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-8-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Elegant White - Chân váy bút chì</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.290.000đ</div>
                  <div class="inner-price-old">1.790.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-9.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-9-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Áo len Polo kẻ ngang</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">590.000đ</div>
                  <div class="inner-price-old">1.090.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag tag-uppercase">
              New
            </div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-10.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-10-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Graceful Pants - Quần dài Tuytsi</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">490.000đ</div>
                  <div class="inner-price-old">990.000đ</div>
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
        </div>
        <div class="swiper-button-next swiper-button-next-custom"><i class="bi bi-arrow-right"></i></div>
        <div class="swiper-button-prev swiper-button-prev-custom"><i class="bi bi-arrow-left"></i></div>
      </div>
      <div class="inner-button">
        <a href="all-product.html" class="button-outline">Xem tất cả</a>
      </div>
    </div>
  </div>
  <!-- End Section 2 -->

  <!-- Section 2 more -->
  <div class="section-2">
    <div class="container">
      <h2 class="box-title">
        RẠNG RỠ THÁNG 3 ƯU ĐÃI LỚN - GIẢM 50% CÁC SẢN PHẨM
      </h2>
      <div class="swiper swiperSection2">
        <div class="swiper-wrapper">
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-11.jpg'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-11-active.jpg'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Crepe Dress - Đầm ôm tạo kiểu</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">795.000đ</div>
                  <div class="inner-price-old">1.590.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-12.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-12-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Quần vải Tuysi ống loe</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">545.000đ</div>
                  <div class="inner-price-old">1.090.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-13.jpg'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-13-active.jpg'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Đầm lụa phối bèo - xếp ly</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.495.000đ</div>
                  <div class="inner-price-old">2.990.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-14.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-14-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Đầm xòe Tuysi Cream tay dài</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">995.000đ</div>
                  <div class="inner-price-old">1.990.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-15.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-15-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Áo sơ mi lụa Mystic</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">595.000đ</div>
                  <div class="inner-price-old">1.190.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-16.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-16-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Đầm ôm Tuytsi Hiver</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.045.000đ</div>
                  <div class="inner-price-old">2.090.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web//images/product-17.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-17-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Áo sơ mi Bloom Collar</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">645.000đ</div>
                  <div class="inner-price-old">1.290.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-18.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-18-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Chân váy 2 khuy phối dây</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">645.000đ</div>
                  <div class="inner-price-old">1.290.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-19.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-19-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Áo vest Sophia Elegance</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">845.000đ</div>
                  <div class="inner-price-old">1.690.000đ</div>
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
          <div class="swiper-slide product-item">
            <div class="inner-tag">
              Best Seller
            </div>
            <div class="inner-discount">-50<span>%</span></div>
            <div class="inner-image">
              <a href="#">
                <img src="<c:url value='/templates/web/images/product-20.webp'/>" alt="">
                <img src="<c:url value='/templates/web/images/product-20-active.webp'/>" alt="" class="hover-img">
              </a>
            </div>
            <div class="inner-content">
              <div class="inner-meta">
                <div class="inner-color">
                  <div class="inner-box"></div>
                  <div class="inner-box"><i class="bi bi-check2"></i></div>
                </div>
                <div class="inner-favorite"><i class="bi bi-heart"></i></div>
              </div>
              <h3 class="inner-title">
                <a href="#">Đầm lụa xòe cổ nơ Signature</a>
              </h3>
              <div class="price-product">
                <div class="inner-price">
                  <div class="inner-price-new">1.175.000đ</div>
                  <div class="inner-price-old">2.350.000đ</div>
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
        </div>
        <div class="swiper-button-next swiper-button-next-custom"><i class="bi bi-arrow-right"></i></div>
        <div class="swiper-button-prev swiper-button-prev-custom"><i class="bi bi-arrow-left"></i></div>
      </div>
      <div class="inner-button">
        <a href="#" class="button-outline">Xem tất cả</a>
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