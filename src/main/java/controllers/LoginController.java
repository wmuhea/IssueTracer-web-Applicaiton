package controllers;
import com.google.gson.Gson;
import helpers.LoginHelper;
import interfaces.IPageName;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginController", urlPatterns = "/login")
public class LoginController extends HttpServlet implements IPageName {
<<<<<<< HEAD
    @Override
    public void setPageName(HttpServletRequest request) {
        request.setAttribute("pageTitle", this.getServletName().replace("Controller", ""));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Boolean validation = LoginHelper.processLoginInfo(request, response, session);
        System.out.println("It is me " + request.getParameter("username"));
        Gson gson = new Gson();
        PrintWriter out = response.getWriter(); //writer for response
        response.setContentType("application/json"); //sets the contentType to json
        response.setCharacterEncoding("UTF-8"); //

        if (validation) {
            response.setStatus(200);
            out.print(gson.toJson("Success"));
//            response.sendRedirect("/app");
        } else {
            response.setStatus(500);
            out.print(gson.toJson(LoginHelper.getErrors()));
//            session.setAttribute("errors", String.join("<br/>", LoginHelper.getErrors()));
            LoginHelper.clearErrors();
//            response.sendRedirect("/login");
        }
        out.flush(); //response writer
    }

=======
>>>>>>> 01a94069b86569b8a2d219a534e6a2b4625a9cb7
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("redirectUrl") == null) {
            setPageName(request, this.getServletName());
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else{
            response.sendRedirect((String) request.getAttribute("redirectUrl"));
        }

    }
}
