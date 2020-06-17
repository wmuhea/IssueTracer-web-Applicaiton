package controllers.api;

import Data.IssuesDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdminIssuesApiController", urlPatterns = "/api/admin/issues")
public class AdminIssuesApiController extends HttpServlet {
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String username = req.getParameter("assignTo");
        String issueId = req.getParameter("Id");

        if(req.getParameter("Id") != null) {
            IssuesDao.getInstance().removeIssue(username, issueId);
        }

        resp.setStatus(200);
        out.print("Successful");
        out.flush();
    }
}
