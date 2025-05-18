<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chỉnh sửa sản phẩm | IVY moda</title>
</head>
<body>
	<main id="main" class="main">
  <div class="pagetitle">
    <h1>Chỉnh sửa sản phẩm</h1>
  </div>

  <div class="card">
    <div class="card-body">
      <form id="editProductForm">
        <!-- Hàng 1 -->
        <div class="row mt-4 mb-4">
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productName" class="form-label" style="width: 150px;">Tên sản phẩm</label>
            <input type="text" class="form-control" id="productName" value="Ivory Bloom Dress – Đầm midi cổ chữ V phối ren" style="margin-left: 40px;">
            <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productName"></div>
          </div>
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productCode" class="form-label" style="width: 150px;">Mã sản phẩm</label>
            <input type="text" class="form-control" id="productCode" value="SP01">
            <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productCode"></div>
          </div>
        </div>

        <!-- Hàng 2 -->
        <div class="row mb-3">
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productPrice" class="form-label" style="width: 150px;">Giá</label>
            <input type="number" class="form-control" id="productPrice" value="350000" style="margin-left: 40px;">
            <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productPrice"></div>
          </div>
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productCategory" class="form-label" style="width: 150px;">Danh mục</label>
            <select class="form-select" id="productCategory">
              <option>Chọn danh mục</option>
              <option selected>Váy</option>
              <option>Áo</option>
              <option>Quần</option>
              <option>Set đồ</option>
            </select>
            <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productCategory"></div>
          </div>
        </div>

        <!-- Hàng 3 -->
        <div class="row mb-3">
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productQuantity" class="form-label" style="width: 150px;">Số lượng</label>
            <input type="number" class="form-control" id="productQuantity" value="20" style="margin-left: 40px;">
            <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productQuantity"></div>
          </div>
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productColor" class="form-label" style="width: 150px;">Màu sắc</label>
            <input type="text" class="form-control" id="productColor" value="Trắng">
            <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productColor"></div>
          </div>
        </div>

        <!-- Hàng 4 -->
        <div class="row mb-3">
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productSize" class="form-label" style="width: 150px;">Kích cỡ</label>
            <input type="text" class="form-control" id="productSize" value="S,M,L" style="margin-left: 40px;">
            <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productSize"></div>
          </div>
          <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productStatus" class="form-label" style="width: 150px;">Trạng thái</label>
            <select class="form-select" id="productStatus">
              <option selected>Còn hàng</option>
              <option>Hết hàng</option>
              <option>Ngừng bán</option>
            </select>
            <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productStatus"></div>
          </div>
        </div>

        <!-- Hàng 5 -->
        <div class="row mb-3">
          <div class="col-md-12 d-flex align-items-center position-relative mb-3">
            <label for="productImage" class="form-label" style="width: 150px;">Ảnh sản phẩm</label>
            <input class="form-control" type="file" id="productImage" multiple style="margin-left: 20px;">
            <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productImage"></div>
          </div>
          
        </div>

        <!-- Hàng mô tả -->
        <div class="row mb-3">
          <label for="about" class="col-md-4 col-lg-3 col-form-label" style="width: 150px;">Mô tả sản phẩm</label>
          <div class="col-md-8 col-lg-9 position-relative mb-3" style="width: 1059px; ">
            <textarea class="tinymce-editor">
                                    <p>Tựa như đóa hoa trắng nở rộ giữa nắng sớm mùa hè, Ivory Bloom Dress là bản hòa ca dịu
                                    dàng giữa nét nữ tính cổ điển và vẻ đẹp hiện đại tối giản.<br>

                                    Thiết kế cổ chữ V thanh thoát kết hợp cùng tay ngắn phối ren hoa nổi nhẹ nhàng, giúp
                                    tôn lên vùng cổ và bờ vai một cách kín đáo nhưng đầy cuốn hút. Phần eo được nhấn
                                    nhẹ, mở ra phom váy suông rủ mềm mại, vừa tạo cảm giác thon gọn vừa mang đến sự
                                    thoải mái cho mọi chuyển động. Điểm nhấn tinh tế nằm ở chi tiết cài nút ngọc trai
                                    cùng kết cấu thân váy liền mạch, giúp tạo hiệu ứng thị giác thanh thoát và trang
                                    nhã.<br>

                                    Chiếc đầm được may từ chất liệu cotton pha sợi tổng hợp cao cấp – thoáng nhẹ, mềm
                                    mịn và giữ phom tốt. Tông màu trắng ngà gợi cảm giác trong trẻo, dễ dàng kết hợp
                                    cùng phụ kiện tối giản như sandal dây mảnh hay túi cói, tạo nên một diện mạo vừa nền
                                    nã vừa nổi bật trong những ngày hè đầy nắng.<br>
                                    <b>Thông tin mẫu :</b> <br>
                                    <b>Chiều cao:</b> 165 cm<br>

                                    <b>Cân nặng:</b> 49 kg<br>

                                    <b>Số đo 3 vòng:</b> 81-63-90 cm <br>

                                    Mẫu mặc size S <br>

                                    Lưu ý: Màu sắc sản phẩm thực tế sẽ có sự chênh lệch nhỏ so với ảnh do điều kiện ánh
                                    sáng khi chụp và màu sắc hiển thị qua màn hình máy tính/ điện thoại.
                                </p>
            </textarea>
            <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productDescription"></div>
          </div>
          
        </div>

        <!-- Nút cập nhật -->
        <div class="d-flex justify-content-end">
          <button type="submit" class="btn btn-success btn-update-product">Cập nhật sản phẩm</button>
          <a href="admin-manage-product" class="btn btn-secondary ms-2">  Hủy bỏ</a>
        </div>
      </form>
    </div>
  </div>
</main>
</body>
</html>