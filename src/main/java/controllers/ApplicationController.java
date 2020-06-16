package controllers;

import Data.IssuesDao;
import com.google.gson.Gson;
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

@WebServlet(name = "ApplicationController", urlPatterns = "/app")
public class ApplicationController extends HttpServlet {
    Gson objectJsonConverter = new Gson();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        System.out.println(request.getParameter("param"));
        // Main code from Tj
 /*

  */    // the below if is included for test. It should be removed in the normal code
        // It is used to redirect to the dashboard page since redirect URl is not working now
        if (request.getParameter("param") == null) {
            if (request.getAttribute("redirectUrl") == null) {
                request.getRequestDispatcher("/app/dashboard.jsp").forward(request, response);
            }else{
                response.sendRedirect((String) request.getAttribute("redirectUrl"));
            }
        } else if (request.getParameter("param").equals("assignedIssues")){
            // The two commented out codes should be included in the main code
            //  User loggedInUser = (User) request.getSession().getAttribute("user");
            //  List<Issue> issuesAssignedToUser = IssuesDao.getInstance().readIssuesFromDb(loggedInUser.getUsername());

            //  for test now delete the below code and uncomment the above after the login is set


            List<Issue> issuesAssignedToUser = IssuesDao.getInstance().readIssuesFromDb("wonde");
            String jsonListOfIssues = objectJsonConverter.toJson(issuesAssignedToUser);
//            System.out.println(jsonListOfIssues);
            PrintWriter out = response.getWriter();
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            out.print(jsonListOfIssues);
//            out.flush();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = ((User) request.getSession().getAttribute("user")).getUsername();
        Issue issue = objectJsonConverter.fromJson(request.getParameter("issue"), Issue.class);
        IssuesDao.getInstance().removeIssue(username, issue);

    }
}
