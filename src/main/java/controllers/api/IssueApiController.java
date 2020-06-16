package controllers.api;

import Data.IssuesDao;
import Data.UserDao;
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
        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        String assign = request.getParameter("assign");
        String severity = request.getParameter("severity");
        PrintWriter out = response.getWriter();

        if (issue.length() > 0 && description.length() > 0 && severity.length() >0 && assign.length() > 0) {
            response.setStatus(202);
            Issue issue1 = IssueHelper.processRequest(request);
            out.print(gson.toJson(issue1));

        } else {
            response.setStatus(500);
            out.print(gson.toJson("Error"));
        }
        out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        if (request.getSession().getAttribute("user") == null) {
            response.setStatus(401);
            out.print(gson.toJson("Unauthorized Access"));
        } else {
            response.setStatus(200);
            User user = (User) request.getSession().getAttribute("user");
            List<Issue> issueList = IssuesDao.getInstance().readIssuesFromDb(user.getUsername());
            System.out.println(issueList);
            out.print(gson.toJson(issueList));
        }

        out.flush();
    }
}
