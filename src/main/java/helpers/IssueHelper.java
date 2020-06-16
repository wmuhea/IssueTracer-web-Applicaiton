package helpers;

import Data.IssuesDao;
import models.Issue;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class IssueHelper {
    private static ArrayList<String> errors = new ArrayList<String>();

    public static ArrayList<String> getErrors() {
        ArrayList<String> clone = (ArrayList<String>) errors.clone();
        errors.clear();
        return clone;
    }

    public static void clearErrors() {
        errors.clear();
    }

    public static Issue processRequest(HttpServletRequest request) {
        Boolean isValid = isValid(request);

        if(isValid) {
            String issue = request.getParameter("issue");
            String description = request.getParameter("description");
            String severity = request.getParameter("severity");
            String assign = request.getParameter("assign");
            Issue issue1 = new Issue(issue, description , severity, assign);

            try {
                IssuesDao.getInstance().addIssueToDb(assign, issue1);
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            return issue1;
        }

        return null;
    }

    private static boolean isValid(HttpServletRequest request) {
        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        String assign = request.getParameter("assign");
        String severity = request.getParameter("severity");
        if(issue == null) errors.add("Issue field cannot be empty");
        if(description == null) errors.add("Description cannot be empty");
        if(assign == null) errors.add("Assign field cannot be empty");
        if(severity == null) errors.add("Severity field cannot be empty");

        if(!errors.isEmpty()) return false;

        return true;
    }
}
