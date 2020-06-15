package controllers.api;

import helpers.LoginHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginApiController", urlPatterns = "/api/login")
public class LoginApiController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Boolean validation = LoginHelper.processLoginInfo(request, response, session);

        if (validation) {
//            response.sendRedirect("/app");
        } else {
            session.setAttribute("errors", String.join("<br/>", LoginHelper.getErrors()));
            LoginHelper.clearErrors();
        }
    }
}
