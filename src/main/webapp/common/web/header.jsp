<%@page import="model.UserObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- Header -->
  <header class="header">
    <div class="container">
      <div class="inner-wrap">
        <!-- Menu Moblie -->
        <button class="inner-menu-mobile" data-bs-toggle="offcanvas" data-bs-target="#menu-mobile"
          aria-controls="menu-mobile">
          <i class="fa-solid fa-bars"></i>
        </button>
        <div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="menu-mobile">
          <div class="offcanvas-header">
            <button class="button-close-menu" data-bs-dismiss="offcanvas" aria-label="Close">
              <i class="fa-solid fa-xmark"></i>
            </button>
          </div>
          <div class="offcanvas-body">
            <div class="menu-mobile-button">
              <a href="#">Đăng nhập</a>
            </div>
            <nav class="menu-mobile-content">
              <ul>
                <li>
                  <a data-bs-toggle="collapse" href="#sub-menu-mobile1" role="button" aria-expanded="false"
                    aria-controls="sub-menu-mobile1">
                    <span>Nữ</span>
                    <i class="fa-solid fa-plus"></i>
                  </a>
                  <ul class="collapse" id="sub-menu-mobile1">
                    <li>
                      <a href="#">Chân váy</a>
                    </li>
                    <li>
                      <a href="#">Đầm / Áo dài</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a data-bs-toggle="collapse" href="#sub-menu-mobile2" role="button" aria-expanded="false"
                    aria-controls="sub-menu-mobile2">
                    <span>Nam</span>
                    <i class="fa-solid fa-plus"></i>
                  </a>
                  <ul class="collapse" id="sub-menu-mobile2">
                    <li>
                      <a href="#">Áo</a>
                    </li>
                    <li>
                      <a href="#">Quần nam</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="saleT5" class="active">
                    <span>ƯU ĐÃI LỚN THÁNG 5</span>
                    <i class="fa-solid fa-plus"></i>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span>Bộ sưu tập</span>
                    <i class="fa-solid fa-plus"></i>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span>LIFESTYLE</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span>Về chúng tôi</span>
                    <i class="fa-solid fa-plus"></i>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- End Menu Mobile -->

        <nav class="inner-menu">
          <ul>
            <li>
              <a href="#">Nữ</a>
            </li>
            <li>
              <a href="#">Nam</a>
            </li>
            <li>
              <a href="saleT5" class="active">Ưu đãi lớn tháng 5</a>
              
            </li>
            <li>
              <a href="#">Bộ sưu tập</a>
              <ul>
                <div class="sub-title-menu">
                  <a href="#">SALE 50% Toàn bộ SP</a>
                </div>
                <li>
                  <a href="#">BLUE SONATA</a>
                </li>
                <li>
                  <a href="#">Đầm kiểu</a>
                </li>
                <li>
                  <a href="#">Áo khoác / blazer</a>
                </li>
                <li>
                  <a href="#">Áo thun / len</a>
                </li>
                <li>
                  <a href="#">Quần tây / jeans</a>
                </li>
                <li>
                  <a href="#">Chân váy công sở</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="#">Về chúng tôi</a>
            </li>
          </ul>
        </nav>
        <div class="inner-logo">
          <a href="trang-chu">
            <img src="<c:url value='/templates/web/images/logo.png'/>" alt="IVY moda" />
          </a>
        </div>
        <div class="inner-right-header">
          <form action="">
            <button>
              <i class="fa-solid fa-magnifying-glass"></i>
            </button>
            <input type="text" placeholder="TÌM KIẾM SẢN PHẨM" />
          </form>
          <div class="inner-actions">
            <!-- Collapse Headphone -->
            <div class="inner-headphone">
              <a data-bs-toggle="collapse" href="#collapseHeadphone" role="button" aria-expanded="false" aria-controls="collapseHeadphone">
                <i class="fa-solid fa-headphones"></i>
              </a>
              <div class="collapse" id="collapseHeadphone">
                <div class="card card-body">
                  <div class="inner-head">Trợ giúp</div>
                  <nav class="inner-body">
                    <ul>
                      <li><a href="#"><i class="fa-solid fa-phone-volume"></i> Hotline</a></li>
                      <li><a href="#"><i class="fa-regular fa-comment-dots"></i> Live chat</a></li>
                      <li><a href="#"><i class="fa-solid fa-repeat"></i> Messenger</a></li>
                      <li><a href="#"><i class="fa-solid fa-envelope"></i> Email</a></li>
                      <li><a href="#"><i class="fa-solid fa-paw"></i> Tra cứu đơn hàng</a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
            <!-- End Collapse Headphone -->
            <div class="inner-user">
              <a href="login"><i class="fa-regular fa-user"></i></a>
            </div>
            <div class="inner-cart">
              <%
                UserObject userObject = (UserObject) session.getAttribute("user");
              %>
              <% if (userObject == null) { %>
              <a href="/jsp-servlet/login">
                <i class="bi bi-bag"></i>
                
              </a>
              <% } else { %>
              <a href="/jsp-servlet/customer/cart">
                <i class="bi bi-bag"></i>
              </a>
              <% } %>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- End Header -->