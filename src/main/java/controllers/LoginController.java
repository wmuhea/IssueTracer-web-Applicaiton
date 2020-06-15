package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginController", urlPatterns = "/login")
public class LoginController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("redirectUrl") == null) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else{
            response.sendRedirect((String) request.getAttribute("redirectUrl"));
        }

    }
}
