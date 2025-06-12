<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang quản lý sản phẩm | IVY moda</title>
</head>
<body>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Quản lý sản phẩm</h1>
        </div>

        <c:if test="${not empty sessionScope.message}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                ${sessionScope.message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <c:remove var="message" scope="session"/>
        </c:if>
        <c:if test="${not empty sessionScope.errorMessage}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                ${sessionScope.errorMessage}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <c:remove var="errorMessage" scope="session"/>
        </c:if>

        <section class="section">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <!-- Tabs cho danh sách sản phẩm và thùng rác -->
                            <ul class="nav nav-tabs" id="productTabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="active-products-tab" data-bs-toggle="tab" href="#active-products" role="tab">Sản phẩm</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="trash-tab" data-bs-toggle="tab" href="#trash" role="tab">Thùng rác</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <!-- Tab sản phẩm hoạt động -->
                                <div class="tab-pane fade show active" id="active-products" role="tabpanel">
                                    <div class="row mt-4 mb-4">
                                        <div class="col-md-2 d-flex align-items-center">
                                            <select id="itemsPerPage" class="form-select" style="max-width: 70px;">
                                                <option value="5">5</option>
                                                <option value="10" selected>10</option>
                                                <option value="20">20</option>
                                                <option value="all">Tất cả</option>
                                            </select>
                                            <span class="ms-2">Số sản phẩm</span>
                                        </div>
                                        <div class="col-md-5 d-flex align-items-center">
                                            <select id="categoryFilter" class="form-select me-2" style="max-width: 150px;">
                                                <option value="">Danh mục</option>
                                                <option value="NEW ARRIVAL">NEW ARRIVAL</option>
                                                <option value="Quần dài">Quần dài</option>
                                            </select>
                                            <input type="date" id="dateFilter" class="form-control" style="max-width: 200px;" />
                                        </div>
                                        <div class="col-md-5 d-flex">
                                            <div class="col-md-7">
                                                <input type="text" id="searchInput" class="form-control" placeholder="🔍 Tìm sản phẩm...">
                                            </div>
                                            <div class="col-md-5 text-end">
                                                <a href="admin-add-product" class="btn btn-primary">+ Thêm sản phẩm</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" id="productContainer">
                                        <c:forEach var="product" items="${products}">
                                            <div class="col-md-4 mb-3">
                                                <div class="card">
                                                    <img src="<c:url value='${product.productImage}'/>" class="card-img-top" alt="${product.productName}">
                                                    <div class="card-body">
                                                        <h5 class="card-title">
                                                            <a href="<c:url value='/product-detail?id=${product.productId}'/>">${product.productName}</a>
                                                        </h5>
                                                        <p class="card-text">Mã: ${product.productCode}</p>
                                                        <p class="card-text">Giá: ${product.productPrice}đ</p>
                                                        <p class="card-text">Danh mục: ${product.productCategory}</p>
                                                        <p class="card-text">Ngày tạo: ${product.createdAt}</p>
                                                        <div class="d-flex justify-content-between">
                                                            <a href="<c:url value='/admin-edit-product?id=${product.productId}'/>" class="btn btn-warning btn-sm">Sửa</a>
                                                            <a href="<c:url value='/admin-delete-product?id=${product.productId}'/>" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc muốn chuyển sản phẩm này vào thùng rác?')">Xóa</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <nav>
                                        <ul class="pagination justify-content-center mt-4" id="pagination"></ul>
                                    </nav>
                                </div>
                                <!-- Tab thùng rác -->
                                <div class="tab-pane fade" id="trash" role="tabpanel">
                                    <div class="row mt-4" id="trashContainer">
                                        <c:forEach var="product" items="${deletedProducts}">
                                            <div class="col-md-4 mb-3">
                                                <div class="card">
                                                    <img src="<c:url value='${product.productImage}'/>" class="card-img-top" alt="${product.productName}">
                                                    <div class="card-body">
                                                        <h5 class="card-title">${product.productName}</h5>
                                                        <p class="card-text">Mã: ${product.productCode}</p>
                                                        <p class="card-text">Giá: ${product.productPrice}đ</p>
                                                        <p class="card-text">Danh mục: ${product.productCategory}</p>
                                                        <p class="card-text">Ngày tạo: ${product.createdAt}</p>
                                                        <div class="d-flex justify-content-between">
                                                            <a href="<c:url value='/admin-restore-product?id=${product.productId}'/>" class="btn btn-success btn-sm" onclick="return confirm('Bạn có chắc muốn khôi phục sản phẩm này?')">Khôi phục</a>
                                                            <a href="<c:url value='/admin-permanently-delete-product?id=${product.productId}'/>" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc muốn xóa vĩnh viễn sản phẩm này?')">Xóa vĩnh viễn</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>
        const products = [
            <c:forEach var="product" items="${products}" varStatus="status">
                {
                    id: ${product.productId},
                    code: "${product.productCode}",
                    name: "${product.productName}",
                    image: "<c:url value='${product.productImage}'/>",
                    price: "${product.productPrice}đ",
                    category: "${product.productCategory}",
                    createdDate: "${product.createdAt}"
                }<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];

        const deletedProducts = [
            <c:forEach var="product" items="${deletedProducts}" varStatus="status">
                {
                    id: ${product.productId},
                    code: "${product.productCode}",
                    name: "${product.productName}",
                    image: "<c:url value='${product.productImage}'/>",
                    price: "${product.productPrice}đ",
                    category: "${product.productCategory}",
                    createdDate: "${product.createdAt}"
                }<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];
    </script>
</body>
</html>