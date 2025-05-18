<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang quản lý đơn hàng | IVY moda</title>
</head>
<body>
<main id="main" class="main">
    <div class="pagetitle d-flex align-items-center justify-content-between">
      <h1>Quản lý đơn hàng</h1>
      <nav>
        <ol class="breadcrumb mb-0">
          <li class="breadcrumb-item">
            <a href="index.html"><i class="bi bi-bag"></i></a>
          </li>
          <li class="breadcrumb-item active">Quản lý đơn hàng</li>
        </ol>
      </nav>
    </div>
    <!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">
        <div class="section-4">
          <div class="inner-wrap">
            <div class="inner-item inner-label"><i class="fa-solid fa-filter"></i> Bộ lọc</div>
            <div class="inner-item">
              <select name="">
                <option value="">Trạng thái </option>
                <option value="">Hoạt động</option>
                <option value="">Tạm dừng</option>
              </select>
            </div>
            <div class="inner-item">
              <input type="date" /><span>-</span>
              <input type="date" />
            </div>
            <div class="inner-item">
              <select name="">
                <option value="">Phương thức thanh toán</option>
                <option value="">Tiền mặt</option>
                <option value="">Chuyển khoản</option>
              </select>
            </div>
            <div class="inner-item">
              <select name="">
                <option value="">Trạng thái thanh toán</option>
                <option value="">Chưa thanh toán</option>
                <option value="">Đã thanh toán</option>
              </select>
            </div>
            <div class="inner-item inner-reset"><i class="fa-solid fa-rotate-left"></i> Xóa bộ lọc</div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="section-6">
          <div class="table-2">
            <table>
              <thead>
                <tr>
                  <th>Mã</th>
                  <th>Thông tin khách</th>
                  <th>Danh sách đơn hàng</th>
                  <th>Thanh toán</th>
                  <th>Trạng thái</th>
                  <th>Ngày đặt</th>
                  <th>Hành động</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="inner-code">OD000001</div>
                  </td>
                  <td>
                    <div>Họ tên: Lê Văn A</div>
                    <div>SĐT: 0123456789</div>
                    <div>Ghi chú: Test...</div>
                  </td>
                  <td>
                    <div class="inner-list">
                      <div class="inner-item">
                        <div class="inner-image"> <img src="<c:url value='/templates/admin/img/LemonWhisperDress.webp'/>" /></div>
                        <div class="inner-content">
                          <div class="inner-name">Lemon Whisper Dress – Đầm maxi hoa vàng</div>
                          <div class="inner-quantity">
                            <div>Màu sắc: Họa tiết Vàng</div>
                            <div>Size: L</div>
                            <div>Số lượng: 1</div>
                          </div>
                        </div>
                      </div>
                      <div class="inner-item">
                        <div class="inner-image"> <img src="<c:url value='/templates/admin/img/LemonWhisperDress.webp'/>" /></div>
                        <div class="inner-content">
                          <div class="inner-name">Lemon Whisper Dress – Đầm maxi hoa vàng</div>
                          <div class="inner-quantity">
                            <div>Màu sắc: Họa tiết Vàng</div>
                            <div>Size: L</div>
                            <div>Số lượng: 1</div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td>
                    <div>Tổng tiền: 10.000.000đ</div>
                    <div>Giảm: 400.000đ</div>
                    <div>Mã giảm: THOITRANG2025</div>
                    <div>Thanh toán: 9.600.000đ</div>
                    <div>PTTT: Ví Momo</div>
                    <div>TTTT: Đã thanh toán</div>
                  </td>
                  <td>
                    <div class="badge badge-orange">Khởi tạo</div>
                  </td>
                  <td>
                    <div>16:20</div>
                    <div>01/01/2025</div>
                  </td>
                  <td>
                    <div class="inner-buttons"><a class="inner-edit" href="admin-order-edit"><i class="fa-solid fa-pen-to-square"></i>
                      </a><a class="inner-remove" href="#"><i class="fa-solid fa-trash-can"></i></a></div>
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="inner-code">OD000002</div>
                  </td>
                  <td>
                    <div>Họ tên: Lê Văn A</div>
                    <div>SĐT: 0123456789</div>
                    <div>Ghi chú: Test...</div>
                  </td>
                  <td>
                    <div class="inner-list">
                      <div class="inner-item">
                        <div class="inner-image"> <img src="<c:url value='/templates/admin/img/GoldenHourSkirt.webp'/>" /></div>
                        <div class="inner-content">
                          <div class="inner-name">Golden Hour Skirt – Chân váy maxi vàng hoa</div>
                          <div class="inner-quantity">
                            <div>Màu sắc: Họa tiết Vàng</div>
                            <div>Size: L</div>
                            <div>Số lượng: 1</div>
                          </div>
                        </div>
                      </div>
                      <div class="inner-item">
                        <div class="inner-image"> <img src="<c:url value='/templates/admin/img/GoldenHourSkirt.webp'/>" /></div>
                        <div class="inner-content">
                          <div class="inner-name">Golden Hour Skirt – Chân váy maxi vàng hoa</div>
                          <div class="inner-quantity">
                            <div>Màu sắc: Họa tiết Vàng</div>
                            <div>Size: L</div>
                            <div>Số lượng: 1</div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td>
                    <div>Tổng tiền: 10.000.000đ</div>
                    <div>Giảm: 400.000đ</div>
                    <div>Mã giảm: THOITRANG2025</div>
                    <div>Thanh toán: 9.600.000đ</div>
                    <div>PTTT: Ví Momo</div>
                    <div>TTTT: Đã thanh toán</div>
                  </td>
                  <td>
                    <div class="badge badge-green">Đã duyệt</div>
                  </td>
                  <td>
                    <div>16:20</div>
                    <div>01/01/2025</div>
                  </td>
                  <td>
                    <div class="inner-buttons"><a class="inner-edit" href="admin-order-edit"><i class="fa-solid fa-pen-to-square"></i>
                      </a><a class="inner-remove" href="#"><i class="fa-solid fa-trash-can"></i></a></div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="row">
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-end">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item active"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </section>
  </main>

</body>
</html>