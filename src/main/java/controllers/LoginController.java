package controllers;

import interfaces.IPageName;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginController", urlPatterns = "/login")
public class LoginController extends HttpServlet implements IPageName {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getSession().getAttribute("user"));
        if (request.getSession().getAttribute("redirectUrl") == null) {
            setPageName(request, this.getServletName());
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            response.sendRedirect((String) request.getAttribute("redirectUrl"));
        }

    }
}
