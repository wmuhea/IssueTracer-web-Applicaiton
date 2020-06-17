package controllers.api;

import Data.IssuesDao;
import com.google.gson.Gson;
import helpers.IssueHelper;
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

@WebServlet(name = "IssueApiController", urlPatterns = "/api/issues")
public class IssueApiController extends HttpServlet {
    Gson gson = new Gson();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Issue issue = IssueHelper.processRequest(request);
        PrintWriter out = response.getWriter();

        if (issue != null) {
            response.setStatus(202);
            out.print(gson.toJson(issue));

        } else {
            response.setStatus(500);
            out.print(gson.toJson(IssueHelper.getErrors()));
        }

        out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        User user = (User) request.getSession().getAttribute("user");

        if (user == null) {
            response.setStatus(401);
            out.print(gson.toJson("Unauthorized Access"));
        } else if (user.getUsername().equals("admin")){
            List<Issue> issueList = IssuesDao.getInstance().readAllIssues();
            out.print(gson.toJson(issueList));
        }else {
            List<Issue> issueList = IssuesDao.getInstance().readIssuesFromDb(user.getUsername());
            out.print(gson.toJson(issueList));
        }

        out.flush();
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String issueId = request.getParameter("Id");
        User user = (User) request.getSession().getAttribute("user");

        if(request.getParameter("Id") != null) {
            IssuesDao.getInstance().removeIssue(user.getUsername(), issueId);
        }

        response.setStatus(200);
        out.print("Successful");
        out.flush();
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String issueId = request.getParameter("Id");
        User user = (User) request.getSession().getAttribute("user");

        if(issueId != null) {
            IssuesDao.getInstance().updateIssueStatus(user.getUsername(), issueId);

        }

        response.setStatus(200);
        out.print("Successful");
        out.flush();
    }
}
