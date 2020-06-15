package controllers.api;

import com.google.gson.Gson;
import helpers.LoginHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginApiController", urlPatterns = "/api/login")
public class LoginApiController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Boolean validation = LoginHelper.processLoginInfo(request, response, session);

        Gson gson = new Gson();
        PrintWriter out = response.getWriter(); //writer for response

        if (validation) {
            response.setStatus(200);
            out.print(gson.toJson("Success"));
        } else {
            response.setStatus(500);
            out.print(gson.toJson(LoginHelper.getErrors()));
            LoginHelper.clearErrors();
        }

        out.flush(); //response writer
    }


}

