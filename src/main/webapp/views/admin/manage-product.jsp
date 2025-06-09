<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang quản lý sản phẩm | IVY moda</title>
</head>
<body>
	<main id="main" class="main">
		<div class="pagetitle ">
			<h1>Quản lý sản phẩm</h1>

		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">

							<!-- Tìm kiếm và chọn số sản phẩm / trang -->
							<div class="row mt-4 mb-4">

								<div class="col-md-2 d-flex align-items-center">
									<select id="itemsPerPage" class="form-select"
										style="max-width: 70px;">
										<option value="5">5</option>
										<option value="10" selected>10</option>
										<option value="20">20</option>
										<option value="all">Tất cả</option>
									</select> <span class="ms-2"> Số sản phẩm</span>
								</div>

								<div class="col-md-5 d-flex align-items-center">
									<!-- Bộ lọc danh mục -->
									<select id="categoryFilter" class="form-select me-2"
										style="max-width: 150px;">
										<option value="">Danh mục</option>
										<option value="NEW ARRIVAL">NEW ARRIVAL</option>
										<option value="Quần dài">Quần dài</option>
										<!-- Có thể thêm danh mục khác -->
									</select>

									

									<!-- Bộ lọc ngày tạo (demo) -->
									<input type="date" id="dateFilter" class="form-control" style="max-width: 200px;" />

								</div>

								<div class="col-md-5 d-flex">
									<div class="col-md-7">
										<input type="text" id="searchInput" class="form-control"
											placeholder="🔍 Tìm sản phẩm...">
									</div>
									<div class="col-md-5 text-end">
										<a href="admin-add-product" class="btn btn-primary">+ Thêm
											sản phẩm</a>
									</div>
								</div>



							</div>

							<!-- Danh sách sản phẩm -->
							<div class="row" id="productContainer"></div>
							


							<!-- Phân trang -->
							<nav>
								<ul class="pagination justify-content-center mt-4"
									id="pagination"></ul>
							</nav>
						</div>


					</div>
				</div>
			</div>
			</div>
		</section>
	</main>
	<!-- End #main -->
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
</script>
	

</body>
</html>