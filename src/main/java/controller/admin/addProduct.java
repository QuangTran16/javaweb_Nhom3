package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.IProductDAO;
import dao.Impl.ProductImpl;
import model.ProductObject;

/**
 * Servlet implementation class addProduct
 */
@WebServlet("/admin-add-product")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class addProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IProductDAO productDAO;

    public addProduct() {
        super();
        productDAO = new ProductImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/add-product.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // Lấy dữ liệu từ form
        String productName = request.getParameter("productName");
        String productCode = request.getParameter("productCode");
        String productPrice = request.getParameter("productPrice");
        String productCategory = request.getParameter("productCategory");
        String productSize = request.getParameter("productSize");
        String productColor = request.getParameter("productColor");
        String productQuantity = request.getParameter("productQuantity");
        String productDescription = request.getParameter("productDescription");
        
        // Danh sách để lưu trữ lỗi
        List<String> errors = new ArrayList<>();

        // Validate dữ liệu
        if (productName == null || productName.trim().isEmpty()) {
            errors.add("Tên sản phẩm không được để trống");
            request.setAttribute("errorProductName", "Tên sản phẩm không được để trống");
        }
        if (productCode == null || productCode.trim().isEmpty()) {
            errors.add("Mã sản phẩm không được để trống");
            request.setAttribute("errorProductCode", "Mã sản phẩm không được để trống");
        }
        if (productPrice == null || productPrice.trim().isEmpty()) {
            errors.add("Giá sản phẩm không được để trống");
            request.setAttribute("errorProductPrice", "Giá sản phẩm không được để trống");
        } else {
            try {
                Double.parseDouble(productPrice);
                if (Double.parseDouble(productPrice) <= 0) {
                    errors.add("Giá sản phẩm phải lớn hơn 0");
                    request.setAttribute("errorProductPrice", "Giá sản phẩm phải lớn hơn 0");
                }
            } catch (NumberFormatException e) {
                errors.add("Giá sản phẩm phải là số");
                request.setAttribute("errorProductPrice", "Giá sản phẩm phải là số");
            }
        }
        if (productCategory == null || productCategory.equals("Chọn danh mục")) {
            errors.add("Vui lòng chọn danh mục");
            request.setAttribute("errorProductCategory", "Vui lòng chọn danh mục");
        }
        if (productSize == null || productSize.trim().isEmpty()) {
            errors.add("Kích cỡ không được để trống");
            request.setAttribute("errorProductSize", "Kích cỡ không được để trống");
        }
        if (productColor == null || productColor.trim().isEmpty()) {
            errors.add("Màu sắc không được để trống");
            request.setAttribute("errorProductColor", "Màu sắc không được để trống");
        }
        if (productQuantity == null || productQuantity.trim().isEmpty()) {
            errors.add("Số lượng không được để trống");
            request.setAttribute("errorProductQuantity", "Số lượng không được để trống");
        } else {
            try {
                Integer.parseInt(productQuantity);
                if (Integer.parseInt(productQuantity) <= 0) {
                    errors.add("Số lượng phải lớn hơn 0");
                    request.setAttribute("errorProductQuantity", "Số lượng phải lớn hơn 0");
                }
            } catch (NumberFormatException e) {
                errors.add("Số lượng phải là số");
                request.setAttribute("errorProductQuantity", "Số lượng phải là số");
            }
        }
        if (productDescription == null || productDescription.trim().isEmpty()) {
            errors.add("Mô tả sản phẩm không được để trống");
            request.setAttribute("errorProductDescription", "Mô tả sản phẩm không được để trống");
        }

        // Xử lý upload file ảnh
        String productImage = "";
        Part filePart = request.getPart("productImage");
        if (filePart == null || filePart.getSize() == 0) {
            errors.add("Ảnh sản phẩm không được để trống");
            request.setAttribute("errorProductImage", "Ảnh sản phẩm không được để trống");
        } else {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String realPath = getServletContext().getRealPath("/uploads");
            Path uploadPath = Paths.get(realPath);
            
            // Tạo thư mục Uploads nếu chưa tồn tại
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }
            
            // Lưu file vào thư mục Uploads
            String filePath = realPath + "/" + fileName;
            filePart.write(filePath);
            productImage = "/Uploads/" + fileName;
        }

        // Nếu có lỗi, quay lại form
        if (!errors.isEmpty()) {
            request.setAttribute("productName", productName);
            request.setAttribute("productCode", productCode);
            request.setAttribute("productPrice", productPrice);
            request.setAttribute("productCategory", productCategory);
            request.setAttribute("productSize", productSize);
            request.setAttribute("productColor", productColor);
            request.setAttribute("productQuantity", productQuantity);
            request.setAttribute("productDescription", productDescription);
            
            RequestDispatcher rd = request.getRequestDispatcher("/views/admin/add-product.jsp");
            rd.forward(request, response);
            return;
        }

        // Tạo đối tượng sản phẩm
        ProductObject product = new ProductObject();
        product.setProductName(productName);
        product.setProductCode(productCode);
        product.setProductPrice(Double.parseDouble(productPrice));
        product.setProductCategory(productCategory);
        product.setProductSize(productSize);
        product.setProductColor(productColor);
        product.setProductQuantity(Integer.parseInt(productQuantity));
        product.setProductDescription(productDescription);
        product.setProductImage(productImage);

        // Lưu sản phẩm vào database
        boolean result = productDAO.insertProduct(product);
        
        // Chuyển hướng dựa trên kết quả
        if (result) {
            response.sendRedirect(request.getContextPath() + "/admin-manage-product?success=Product added successfully");
        } else {
            request.setAttribute("errorMessage", "Thêm sản phẩm thất bại. Vui lòng thử lại.");
            RequestDispatcher rd = request.getRequestDispatcher("/views/admin/add-product.jsp");
            rd.forward(request, response);
        }
    }
}