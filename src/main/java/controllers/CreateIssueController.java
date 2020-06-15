package controllers;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.print.PrinterAbortException;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CreateIssueController", urlPatterns = "/createIssue")
public class CreateIssueController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        String assign = request.getParameter("assign");
        System.out.println(issue);
        System.out.println(description);
        System.out.println(assign);
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();

        if (issue.length() > 0 && description.length() > 0 && assign.length() > 0) {
            out.print(gson.toJson(new String("successful")));
//            out.flush();
        } else {
            out.print(gson.toJson(new String("errror")));
        }
            out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/createIssue.jsp").forward(request, response);
    }
}
