package controllers.api;

import Data.IssuesDao;
import com.google.gson.Gson;
import helpers.IssueHelper;
import helpers.LoginHelper;
import helpers.ProfileHelper;
import models.Issue;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ProfileApiController", urlPatterns = "/api/profile")
public class ProfileApiController extends HttpServlet {
    Gson gson = new Gson();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    User user = ProfileHelper.processUserProfile(request);
    PrintWriter out = response.getWriter();

        if (user != null) {
            response.setStatus(202);
            out.print(gson.toJson(user));

        } else {
            response.setStatus(500);
            out.print(gson.toJson(ProfileHelper.getErrors()));
        }

        out.flush();
    }

//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//            PrintWriter out = response.getWriter();
//
//            if (request.getSession().getAttribute("user") != null) {
//                User user;
//                String name = user.getFirstname();
//            }
//            out.flush();
//        }
    }








