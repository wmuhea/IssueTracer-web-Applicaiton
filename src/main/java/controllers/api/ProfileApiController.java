package controllers.api;

import com.google.gson.Gson;
import helpers.LoginHelper;
import helpers.ProfileHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProfileApiController")
public class ProfileApiController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean validation = ProfileHelper.isValid(request, response);

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



