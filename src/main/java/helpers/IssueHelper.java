package helpers;

import Data.IssuesDao;
import models.Issue;

import javax.servlet.http.HttpServletRequest;

public class IssueHelper {
    public static Issue processRequest(HttpServletRequest request) {
        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        String assign = request.getParameter("assign");
        Issue issue1 = new Issue("Programming", description , "high", assign);

        try {
            IssuesDao.getInstance().addIssueToDb(assign, issue1);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return issue1;
    }
}
