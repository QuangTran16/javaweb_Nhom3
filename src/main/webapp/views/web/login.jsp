<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicons -->
<link href="<c:url value='/templates/admin/img/logo-icon.ico'/>"
	rel="icon" />
<link href="<c:url value='/templates/admin/img/logo-icon.ico'/>"
	rel="apple-touch-icon" />

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link
	href="<c:url value='/templates/admin/bootstrap/bootstrap.min.css'/>"
	rel="stylesheet" />
<link
	href="<c:url value='/templates/admin/bootstrap-icons/bootstrap-icons.css'/>"
	rel="stylesheet" />
<link
	href="<c:url value='/templates/admin/boxicons/css/boxicons.min.css'/>"
	rel="stylesheet" />
<link href="<c:url value='/templates/admin/quill/quill.snow.css'/>"
	rel="stylesheet" />
<link href="<c:url value='/templates/admin/quill/quill.bubble.css'/>"
	rel="stylesheet" />
<link href="<c:url value='/templates/admin/remixicon/remixicon.css'/>"
	rel="stylesheet" />
<link
	href="<c:url value='/templates/admin/simple-datatables/style.css'/>"
	rel="stylesheet" />

<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Template Main CSS File -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/ngoquangha-order-list.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/ngoquangha-order-edit.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/manager-user.css'/>">
<link href="<c:url value='/templates/admin/css/style.css'/>"
	rel="stylesheet" />
<title>Đăng nhập | IVY moda</title>
</head>
<body
	style="background-image: url(<c:url value='/templates/admin/img/background.png'/>;">
	<main>
		<div class="container">
			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
							<div class="d-flex justify-content-center py-4">
								<a href="index.html"
									class="logo d-flex align-items-center w-auto">
									<img src="<c:url value='/templates/admin/img/logo-icon.ico'/>"
									alt="" /> <span class="d-none d-lg-block"
									style="font-size: 26px; font-weight: 700; color: #010101; font-family:"Nunito", sans-serif;">IVY
										Moda</span>
								</a>

							</div>
							<!-- End Logo -->

							<div class="card mb-3"
								style="display: flex; flex-direction: row; width: 800px; padding: 10px; border-radius: 45px;">
								<div>
									<img src="<c:url value='/templates/admin/img/login2.png'/>"
										alt="" style="width: 100%;">
								</div>

								<div class="card-body">
									<div class="pt-4 pb-2" style="margin-top: 40px;">
										<h5 class="card-title text-center pb-0 fs-4">Đăng nhập
											tài khoản</h5>
									</div>

									<form class="row g-3 needs-validation" action="${pageContext.request.contextPath}/trang-chu" method="post">
										<div class="col-12">
											<label for="yourUsername" class="form-label">Tên
												đăng nhập</label>
											<div class="input-group has-validation">
												<!-- <span class="input-group-text" id="inputGroupPrepend">@</span> -->
												<input type="text" name="username" class="form-control"
													id="yourUsername" required />
												<div class="invalid-feedback">Vui lòng nhập tên của
													bạn!</div>
											</div>
										</div>

										<div class="col-12">
											<label for="yourPassword" class="form-label">Mật
												khẩu</label> <input type="password" name="password"
												class="form-control" id="yourPassword" required />
											<div class="invalid-feedback">Vui lòng nhập mật khẩu
												của bạn!</div>
										</div>

										<div class="col-12">
											<div class="form-check"
												style="display: flex; justify-content: space-between;">
												<div>
													<input class="form-check-input" type="checkbox"
														name="remember" value="true" id="rememberMe" />
													<label class="form-check-label" for="rememberMe">Lưu
														mật khẩu</label>
												</div>

												<a href="" style="text-align: right; color: #212529;">Quên
													mật khẩu?</a>
											</div>
										</div>
										<div class="col-12">
											<button class="btn btn-secondary w-100" type="submit">
												Đăng nhập</button>
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Chưa có tài khoản? <a href="pages-register.html">Tạo tài
													khoản</a>
											</p>
										</div>
									</form>
								</div>
							</div>

							<!-- <div class="credits"> -->
							<!-- All the links in the footer should remain intact. -->
							<!-- You can delete the links only if you purchased the pro version. -->
							<!-- Licensing information: https://bootstrapmade.com/license/ -->
							<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
							<!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
							<!-- </div> -->
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
	<!-- End #main -->
	<!-- Vendor JS Files -->
	<script
		src="<c:url value='/templates/admin/apexcharts/apexcharts.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/bootstrap/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/templates/admin/chart.js/chart.umd.js'/>"></script>
	<script src="<c:url value='/templates/admin/echarts/echarts.min.js'/>"></script>
	<script src="<c:url value='/templates/admin/quill/quill.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/simple-datatables/simple-datatables.js'/>"></script>
	<script src="<c:url value='/templates/admin/tinymce/tinymce.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/php-email-form/validate.js'/>"></script>

	<!-- Template Main JS File -->
	<script src="<c:url value='/templates/admin/js/main.js'/>"></script>
	<script src="<c:url value='/templates/admin/js/products-list.js'/>"></script>
	<script src="<c:url value='/templates/admin/js/validate-product.js'/>"></script>
	<script src="<c:url value='/templates/admin/js/add-product.js'/>"></script>
	<script src="<c:url value='/templates/admin/js/validate-login.js'/>"></script>

</body>
</html>