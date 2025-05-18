package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IProductDAO;
import dao.Impl.ProductImpl;
import model.ProductObject;

/**
 * Servlet implementation class ManageProduct
 */
@WebServlet("/admin-manage-product")
public class ManageProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IProductDAO productDAO;

    public ManageProduct() {
        super();
        productDAO = new ProductImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // Lấy tham số từ request
        String search = request.getParameter("search") != null ? request.getParameter("search") : "";
        String category = request.getParameter("category") != null ? request.getParameter("category") : "";
        String status = request.getParameter("status") != null ? request.getParameter("status") : "";
        String date = request.getParameter("date") != null ? request.getParameter("date") : "";
        String pageStr = request.getParameter("page") != null ? request.getParameter("page") : "1";
        String itemsPerPageStr = request.getParameter("itemsPerPage") != null ? request.getParameter("itemsPerPage") : "10";

        int page = Integer.parseInt(pageStr);
        int itemsPerPage = itemsPerPageStr.equals("all") ? Integer.MAX_VALUE : Integer.parseInt(itemsPerPageStr);

        // Lấy tất cả sản phẩm từ database
        List<ProductObject> allProducts = productDAO.getAllProducts();

        // Lọc sản phẩm
        List<ProductObject> filteredProducts = allProducts.stream()
            .filter(p -> p.getProductName().toLowerCase().contains(search.toLowerCase()))
            .filter(p -> category.isEmpty() || p.getProductCategory().equals(category))
            .filter(p -> status.isEmpty() || (status.equals("Còn hàng") && p.getProductQuantity() > 0) || (status.equals("Hết hàng") && p.getProductQuantity() == 0))
            .filter(p -> date.isEmpty() || (p.getCreatedAt() != null && p.getCreatedAt().toString().contains(date)))
            .collect(Collectors.toList());

        // Tính toán phân trang
        int totalItems = filteredProducts.size();
        int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);
        page = Math.max(1, Math.min(page, totalPages)); // Đảm bảo page hợp lệ

        int start = (page - 1) * itemsPerPage;
        int end = Math.min(start + itemsPerPage, totalItems);
        List<ProductObject> pageProducts = filteredProducts.subList(start, end);

        // Đặt các thuộc tính để truyền sang JSP
        request.setAttribute("products", pageProducts);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("itemsPerPage", itemsPerPageStr);
        request.setAttribute("search", search);
        request.setAttribute("category", category);
        request.setAttribute("status", status);
        request.setAttribute("date", date);

        // Hiển thị thông báo thành công nếu có
        String success = request.getParameter("success");
        if (success != null) {
            request.setAttribute("successMessage", success);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/manage-product.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}