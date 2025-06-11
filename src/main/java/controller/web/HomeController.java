package controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IProductDAO;
import dao.Impl.ProductImpl;
import model.ProductObject;

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {

    private static final long serialVersionUID = 2686801510274002166L;
    private IProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        // Khởi tạo ProductImpl
        productDAO = new ProductImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy danh sách tất cả sản phẩm
        List<ProductObject> allProducts = productDAO.getAllProducts();

        // Lọc sản phẩm cho "New Arrival" (giả sử lấy 10 sản phẩm đầu tiên)
        List<ProductObject> newArrivals = allProducts.size() > 10 ? allProducts.subList(0, 10) : allProducts;

        // Lọc sản phẩm cho "Best Seller" (giả sử lấy các sản phẩm tiếp theo hoặc dựa vào logic cụ thể)
        List<ProductObject> bestSellers = allProducts.size() > 20 ? allProducts.subList(10, 20) : allProducts.subList(0, allProducts.size());

        // Đặt danh sách sản phẩm vào request
        req.setAttribute("newArrivals", newArrivals);
        req.setAttribute("bestSellers", bestSellers);

        // Chuyển hướng đến home.jsp
        RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}