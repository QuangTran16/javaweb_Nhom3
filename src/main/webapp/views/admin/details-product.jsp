<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chi tiết sản phẩm | IVY moda</title>
</head>
<body>
	<main id="main" class="main">
		<div class="pagetitle ">
			<h1>Chi tiết sản phẩm</h1>

		</div>
		<div class="card">
			<div class="card-body">

				<!-- Card hiển thị thông tin chi tiết -->

				<div class="row g-0 mt-3 ">
					<div class="col-md-4 mt-4">
						<img
							src="<c:url value='/templates/admin/img/IvoryBloomDress.webp'/>"
							class="img-fluid rounded-start" alt="Ảnh sản phẩm">
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title d-flex " id="productName">Ivory Bloom
								Dress – Đầm midi cổ chữ V phối ren</h5>
							<div class="row">
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Mã sản phẩm : </strong>
										</p>
									</div>
									<div class="col-md-6">
										<p id="productCode" style="margin-left: 30px;">SP01</p>
									</div>
								</div>
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Giá : </strong>
										</p>
									</div>
									<div class="col-md-6">
										<p id="productPrice" style="margin-left: 30px;">350.000đ</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Danh mục : </strong>
										</p>
									</div>
									<div class="col-md-6">
										<p id="productCategory" style="margin-left: 30px;">Áo</p>
									</div>
								</div>
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Số lượng còn : </strong>
										</p>
									</div>
									<div class="col-md-6">
										<p id="productQuantity" style="margin-left: 30px;">120</p>
									</div>
								</div>
							</div>
							<div class="row">
								
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Màu sắc :</strong>
										</p>
									</div>
									<div class="col-md-6">
										<p id="productColor" style="margin-left: 30px;">Trắng</p>
									</div>
								</div>
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Kích cỡ :</strong>
										</p>
									</div>
									<div class="col-md-6 ">
										<p id="productSize" style="margin-left: 30px;">S,M,L</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 d-flex">
									<div class="col-md-6">
										<p>
											<strong>Trạng thái :</strong>
										</p>
									</div>
									<div class="col-md-6 ">
										<p id="productStatus" style="margin-left: 30px;"
											class="badge bg-success">Còn hàng</p>
									</div>
								</div>
								

							</div>
							<div class="row">
								<p>
									<strong>Mô tả : </strong>
								</p>
							</div>
							<div class="row">
								<p>
									Tựa như đóa hoa trắng nở rộ giữa nắng sớm mùa hè, Ivory Bloom
									Dress là bản hòa ca dịu dàng giữa nét nữ tính cổ điển và vẻ đẹp
									hiện đại tối giản.<br> Thiết kế cổ chữ V thanh thoát kết
									hợp cùng tay ngắn phối ren hoa nổi nhẹ nhàng, giúp tôn lên vùng
									cổ và bờ vai một cách kín đáo nhưng đầy cuốn hút. Phần eo được
									nhấn nhẹ, mở ra phom váy suông rủ mềm mại, vừa tạo cảm giác
									thon gọn vừa mang đến sự thoải mái cho mọi chuyển động. Điểm
									nhấn tinh tế nằm ở chi tiết cài nút ngọc trai cùng kết cấu thân
									váy liền mạch, giúp tạo hiệu ứng thị giác thanh thoát và trang
									nhã.<br> Chiếc đầm được may từ chất liệu cotton pha sợi
									tổng hợp cao cấp – thoáng nhẹ, mềm mịn và giữ phom tốt. Tông
									màu trắng ngà gợi cảm giác trong trẻo, dễ dàng kết hợp cùng phụ
									kiện tối giản như sandal dây mảnh hay túi cói, tạo nên một diện
									mạo vừa nền nã vừa nổi bật trong những ngày hè đầy nắng.<br>
									<b>Thông tin mẫu :</b> <br> <b>Chiều cao:</b> 165 cm<br>

									<b>Cân nặng:</b> 49 kg<br> <b>Số đo 3 vòng:</b> 81-63-90
									cm <br> Mẫu mặc size S <br> Lưu ý: Màu sắc sản phẩm
									thực tế sẽ có sự chênh lệch nhỏ so với ảnh do điều kiện ánh
									sáng khi chụp và màu sắc hiển thị qua màn hình máy tính/ điện
									thoại.
								</p>
							</div>
						</div>
					</div>
				</div>



			</div>
		</div>
		<div class="mt-4">
			<a href="admin-manage-product" class="btn btn-secondary"> <i
				class="bi bi-arrow-left"></i> Quay lại danh sách
			</a>
		</div>
	</main>

</body>
</html>