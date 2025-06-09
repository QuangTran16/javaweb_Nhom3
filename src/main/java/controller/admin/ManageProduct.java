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

	public void init() {
		productDAO = new ProductImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Lấy danh sách sản phẩm từ database
		List<ProductObject> products = productDAO.getAllProducts();

		// Gửi dữ liệu sang JSP
		request.setAttribute("products", products);

		// Forward sang JSP
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/admin/manage-product.jsp");
		dispatcher.forward(request, response);
	}



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}