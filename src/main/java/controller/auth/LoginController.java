package controller.auth;

import dao.Impl.UserDAOImpl;
import dao.UserDAO;
import model.UserObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/auth/login")
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;


    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username != null && !username.isEmpty() && password != null && !password.isEmpty()){
            UserDAO userDAO = new UserDAOImpl();
            UserObject userObject = userDAO.getUserByUsernamePassword(username, password);

            if (userObject == null){
                response.sendRedirect("/jsp-servlet/login");
            }else {
                HttpSession session = request.getSession();
                session.setAttribute("user", userObject);
                response.sendRedirect("/jsp-servlet/trang-chu");
            }
        }
    }
}
