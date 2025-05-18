<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang quản lý tài khoản | IVY moda</title>
</head>
<body>
<main class="main" id="main">
    <section class="section">
      <div class="row">
        <div class="col-12">
          <h1 class="box-title">Quản lý người dùng</h1>
          <div class="section-4">
            <div class="inner-wrap">
              <div class="inner-item inner-label"><i class="fa-solid fa-filter"></i> Bộ lọc</div>
              <div class="inner-item">
                <select name="">
                  <option value="">Trạng thái </option>
                  <option value="">Hoạt động</option>
                </select>
              </div>
              <div class="inner-item">
                <input type="date" /><span>-</span>
                <input type="date" />
              </div>
              <div class="inner-item inner-reset"><i class="fa-solid fa-rotate-left"></i> Xóa bộ lọc</div>
            </div>
          </div>
          <div class="section-5">
            <div class="inner-wrap">
              <div class="inner-change-status">
                <div class="inner-item">
                  <select name="">
                    <option value="">-- Hành động -- </option>
                    <option value="">Hoạt động </option>
                    <option value="">Tạm dừng</option>
                    <option value="">Xóa</option>
                  </select>
                </div>
                <div class="inner-item">
                  <button>Áp dụng </button>
                </div>
              </div>
              <div class="inner-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Tìm kiếm" />
              </div>
            </div>
          </div>
          <div class="section-6">
            <div class="table-2">
              <table>
                <thead>
                  <tr>
                    <th>
                      <input class="custom-check" type="checkbox" id="check1" />
                      <label class="custom-icon-checkbox" for="check1"><i class="fa-solid fa-check"></i></label>
                    </th>
                    <th>Họ tên</th>
                    <th class="inner-center">Ảnh đại diện</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Địa chỉ</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <input class="custom-check" type="checkbox" id="check2" />
                      <label class="custom-icon-checkbox" for="check2"><i class="fa-solid fa-check"></i></label>
                    </td>
                    <td>Nguyễn Văn An</td>
                    <td class="inner-center"><img class="inner-avatar" src="assets/images/tour-1.jpg" /></td>
                    <td>an.nguyen@gmail.com</td>
                    <td>0135252590</td>
                    <td>Số 1, đường Mỹ Đình,...</td>
                    <td>
                      <div class="badge badge-green">Hoạt động</div>
                    </td>
                    <td>
                      <div class="inner-buttons"><a class="inner-edit" href="repair-user.html"><i
                            class="fa-solid fa-pen-to-square"></i> </a><a class="inner-remove" href="#"><i
                            class="fa-solid fa-trash-can"></i></a></div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input class="custom-check" type="checkbox" id="check2" />
                      <label class="custom-icon-checkbox" for="check2"><i class="fa-solid fa-check"></i></label>
                    </td>
                    <td>Trần Thị Bích Ngọc</td>
                    <td class="inner-center"><img class="inner-avatar" src="assets/images/tour-1.jpg" /></td>
                    <td>bichngoc.tran@gmail.com</td>
                    <td>0987654321</td>
                    <td>Số 23, đường Long Tầm,...</td>
                    <td>
                      <div class="badge badge-orange">Tạm dừng</div>
                    </td>
                    <td>
                      <div class="inner-buttons"><a class="inner-edit" href="repair-user.html"><i
                            class="fa-solid fa-pen-to-square"></i> </a><a class="inner-remove" href="#"><i
                            class="fa-solid fa-trash-can"></i></a></div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input class="custom-check" type="checkbox" id="check2" />
                      <label class="custom-icon-checkbox" for="check2"><i class="fa-solid fa-check"></i></label>
                    </td>
                    <td>Lê Văn A</td>
                    <td class="inner-center"><img class="inner-avatar" src="assets/images/tour-1.jpg" /></td>
                    <td>levana@gmail.com</td>
                    <td>0123467890</td>
                    <td>Số 123, đường ABC,...</td>
                    <td>
                      <div class="badge badge-green">Hoạt động</div>
                    </td>
                    <td>
                      <div class="inner-buttons"><a class="inner-edit" href="repair-user.html"><i
                            class="fa-solid fa-pen-to-square"></i> </a><a class="inner-remove" href="#"><i
                            class="fa-solid fa-trash-can"></i></a></div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input class="custom-check" type="checkbox" id="check2" />
                      <label class="custom-icon-checkbox" for="check2"><i class="fa-solid fa-check"></i></label>
                    </td>
                    <td>Lê Hoàng Phúc</td>
                    <td class="inner-center"><img class="inner-avatar" src="assets/images/tour-1.jpg" /></td>
                    <td>hoangphuc.le@gmail.com</td>
                    <td>0983524233</td>
                    <td>Số 3, đường Lạc Long Quân,...</td>
                    <td>
                      <div class="badge badge-green">Hoạt động</div>
                    </td>
                    <td>
                      <div class="inner-buttons"><a class="inner-edit" href="repair-user.html"><i
                            class="fa-solid fa-pen-to-square"></i> </a><a class="inner-remove" href="#"><i
                            class="fa-solid fa-trash-can"></i></a></div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input class="custom-check" type="checkbox" id="check2" />
                      <label class="custom-icon-checkbox" for="check2"><i class="fa-solid fa-check"></i></label>
                    </td>
                    <td>Phạm Minh Tuấn</td>
                    <td class="inner-center"><img class="inner-avatar" src="assets/images/tour-1.jpg" /></td>
                    <td>	minhtuan.pham@gmail.com</td>
                    <td>0123456789</td>
                    <td>Số 456, đường Cầu Diễn,...</td>
                    <td>
                      <div class="badge badge-red">Ngừng hoạt động</div>
                    </td>
                    <td>
                      <div class="inner-buttons"><a class="inner-edit" href="repair-user.html"><i
                            class="fa-solid fa-pen-to-square"></i> </a><a class="inner-remove" href="#"><i
                            class="fa-solid fa-trash-can"></i></a></div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input class="custom-check" type="checkbox" id="check3" />
                      <label class="custom-icon-checkbox" for="check3"><i class="fa-solid fa-check"></i></label>
                    </td>
                    <td>Đỗ Thị Mai Anh</td>
                    <td class="inner-center"><img class="inner-avatar" src="assets/images/tour-1.jpg" /></td>
                    <td>maianh.do@gmail.com</td>
                    <td>0423432550</td>
                    <td>Số 789, Phố Hàng Mã,...</td>
                    <td>
                      <div class="badge badge-green">Hoạt động</div>
                    </td>
                    <td>
                      <div class="inner-buttons"><a class="inner-edit" href="repair-user.html"><i
                            class="fa-solid fa-pen-to-square"></i> </a><a class="inner-remove" href="#"><i
                            class="fa-solid fa-trash-can"></i></a></div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="section-7"><span class="inner-label">Hiển thị 1 - 9 của 78</span>
            <select class="inner-pagination" name="">
              <option value="">Trang 1 </option>
              <option value="">Trang 2 </option>
              <option value="">Trang 3 </option>
              <option value="">Trang 4 </option>
            </select>
          </div>
        </div>
      </div>
    </section>

  </main>

</body>
</html>