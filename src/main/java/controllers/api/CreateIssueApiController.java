package controllers.api;

import Data.IssuesDao;
import com.google.gson.Gson;
import helpers.IssueHelper;
import models.Issue;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CreateIssueApiController", urlPatterns = "/api/issues")
public class CreateIssueApiController extends HttpServlet {
    Gson gson = new Gson();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        String assign = request.getParameter("assign");
        PrintWriter out = response.getWriter();

        if (issue.length() > 0 && description.length() > 0 && assign.length() > 0) {
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
            out.print(gson.toJson(IssuesDao.getInstance().readIssuesFromDb((String) request.getSession().getAttribute("user"))));
        }

        out.flush();
    }
}
