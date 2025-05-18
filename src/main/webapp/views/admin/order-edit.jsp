<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chỉnh sửa đơn hàng | IVY moda</title>
</head>

<body>
<main id="main" class="main">
    <section class="section dashboard">
      <div class="row">
        <div class="col-12">
          <h1 class="box-title">Đơn hàng: OD000001</h1>
        </div>
        <div class="col-12">
          <div class="section-8">
          <form action="" class="form-order-edit">
            <div class="inner-group">
              <label class="inner-label" for="name">Tên khách hàng</label>
              <input type="text" id="name" name="name" class="inner-name"/>
              <div class="message message-name"></div>
            </div>
            <div class="inner-group">
              <label class="inner-label" for="phone">Số điện thoại</label>
              <input type="text" id="phone" name="phone" class="inner-phone"/>
              <div class="message message-phone"></div>
            </div>
            <div class="inner-group inner-two-col">
              <label class="inner-label" for="note">Ghi chú</label>
              <textarea id="note" name="note"> </textarea>
            </div>
            <div class="inner-group">
              <label class="inner-label" for="payment">Phương thức thanh toán</label>
              <select name="payment" id="payment">
                <option value="">Ví Momo</option>
                <option value="">Tiền mặt</option>
              </select>
            </div>
            <div class="inner-group">
              <label class="inner-label" for="statusPay">Trạng thái thanh toán</label>
              <select name="statusPay" id="statusPay">
                <option value="">Đã thanh toán</option>
                <option value="">Chưa thanh toán</option>
              </select>
            </div>
            <div class="inner-group">
              <label class="inner-label" for="createAt">Ngày đặt</label>
              <input type="datetime-local" id="createAt" name="createAt" value="2025-04-14T10:30" readonly="readonly" />
            </div>
            <div class="inner-group">
              <label class="inner-label" for="status">Trạng thái</label>
              <select name="status" id="status">
                <option value="">Khởi tạo</option>
                <option value="">Hoạt động</option>
                <option value="">Dừng hoạt động</option>
              </select>
            </div>
            <div class="inner-group">
              <label class="inner-label">Danh sách đơn hàng</label>
              <div class="inner-order-list">
                <div class="inner-order-item">
                  <div class="inner-order-image"> <img src="assets/img/order-list-test.webp" /></div>
                  <div class="inner-order-content">
                    <div class="inner-order-name">Lemon Whisper Dress – Đầm maxi hoa vàng</div>
                    <div class="inner-order-text">Màu sắc: Họa tiết Vàng</div>
                    <div class="inner-order-text">Size: L</div>
                    <div class="inner-order-text">Số lượng: 1</div>
                  </div>
                </div>
                <div class="inner-order-item">
                  <div class="inner-order-image"> <img src="assets/img/order-list-test.webp" /></div>
                  <div class="inner-order-content">
                    <div class="inner-order-name">Golden Hour Skirt – Chân váy maxi vàng hoa</div>
                    <div class="inner-order-text">Màu sắc: Họa tiết Vàng</div>
                    <div class="inner-order-text">Size: L</div>
                    <div class="inner-order-text">Số lượng: 1</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="inner-group">
              <label class="inner-label">Thanh toán</label>
              <div class="inner-order-total">
                <div>Tổng tiền: 10.000.000đ</div>
                <div>Giảm: 400.000đ</div>
                <div>Mã giảm: THOITRANG2025</div>
                <div>Thanh toán: <span class="inner-order-price">9.600.000đ</span></div>
              </div>
            </div>
            <div class="inner-button inner-two-col">
              <button class="btn-update">Cập nhật</button>
            </div>
          </form>
          <div class="inner-back"> <a href="admin-order-list">Quay lại danh sách</a></div>
        </div>
        </div>
      </div>
    </section>
  </main>

</body>
</html>