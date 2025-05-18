<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang thêm sản phẩm | IVY moda</title>
</head>
<body>
<main id="main" class="main">
    <div class="pagetitle ">
      <h1>Thêm sản phẩm mới</h1>
    </div>
    <div class="card">
      <div class="card-body">
        <form id="addProductForm" action="${pageContext.request.contextPath}/admin-add-product" method="post" enctype="multipart/form-data">
          <div class="row mt-4 mb-4">
            <div class="col-md-6 d-flex align-items-center position-relative mb-3 ">
              <label for="productName" class="form-label" style="width: 150px;">Tên sản phẩm</label>
              <input type="text" class="form-control" id="productName" name="productName"
                placeholder="Golden Hour Skirt - Chân váy maxi vàng hoa" style="margin-left: 40px;">
                <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productName"></div>
            </div>
            <div class="col-md-6 d-flex align-items-center position-relative mb-3">
              <label for="productCode" class="form-label" style="width: 150px;">Mã sản phẩm</label>
              <input type="text" class="form-control" id="productCode" name="productCode" placeholder="31B0156">
              <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productCode"></div>
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6 d-flex align-items-center position-relative mb-3">
              <label for="productPrice" class="form-label" style="width: 150px;">Giá</label>
              <input type="number" class="form-control" id="productPrice" name="productPrice" placeholder="" style="margin-left: 40px;">
              <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productPrice"></div>
            </div>
            <div class="col-md-6 d-flex align-items-center position-relative mb-3">
              <label for="productCategory" class="form-label" style="width: 150px;">Danh mục</label>
              <select class="form-select" id="productCategory" name="productCategory">
                <option selected>Chọn danh mục</option>
                <option>Váy</option>
                <option>Áo</option>
                <option>Quần</option>
                <option>Set đồ</option>
              </select>
              <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productCategory"></div>
            </div>
            
          </div>
          <div class="row mb-3">
            <div class="col-md-6 d-flex align-items-center position-relative mb-3">
              <label for="productSize" class="form-label" style="width: 150px;" >Kích cỡ</label>
              <input type="text" class="form-control" id="productSize" name="productSize" placeholder="S,M,L" style="margin-left: 40px;">
              <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productSize"></div>
            </div>
            
              <div class="col-md-6 d-flex align-items-center position-relative mb-3">
              <label for="productColor" class="form-label" style="width: 150px;">Màu sắc</label>
              <input type="text" class="form-control" id="productColor" name="productColor" placeholder="">
              <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productColor"></div>
            </div>
            
          </div>
          <div class="row mb-3">
            <div class="col-md-6 d-flex align-items-center position-relative mb-3">
            <label for="productImage" class="form-label" style="width: 150px;">Ảnh sản phẩm</label>
            <input class="form-control" type="file" id="productImage" name="productImage" multiple   style="margin-left: 40px;"  >
            <div class="text-danger small position-absolute" style="top: 100%; left: 162px;" id="error-productImage"></div>
            </div>
            <div class="col-md-6 d-flex align-items-center position-relative mb-3">
              <label for="productQuantity" class="form-label" style="width: 150px;">Số lượng</label>
              <input type="number" class="form-control" id="productQuantity" name="productQuantity" placeholder="Nhập số lượng">
              <div class="text-danger small position-absolute" style="top: 100%; left: 130px;" id="error-productQuantity"></div>
            </div>
          </div>

          

          <div class="row mb-3 position-relative">
            <label for="productDescription" class="col-md-4 col-lg-3 col-form-label " style="width: 150px;">Mô tả sản phẩm </label>
            <div class="col-md-8 col-lg-9" style="width: 1059px;">

              <textarea class="tinymce-editor" name="productDescription">
                            

              </textarea>

            </div>
            <div class="text-danger small position-absolute" style="top: 100%; left: 150px;" id="error-productDescription"></div>
          </div>
          <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-primary " >Thêm sản phẩm</button>
            <a href="admin-manage-product" class="btn btn-secondary ms-2">  Hủy bỏ</a>
          </div>

          
        </form>
      </div>
    </div>
  </main>
</body>
</html>