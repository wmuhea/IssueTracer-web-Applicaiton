package controllers;

import interfaces.IPageName;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateIssueController", urlPatterns = "/createIssue")
public class  CreateIssueController extends HttpServlet implements IPageName {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        setPageName(request, this.getServletName());
        request.getRequestDispatcher("/createIssue.jsp").forward(request, response);
    }
}
