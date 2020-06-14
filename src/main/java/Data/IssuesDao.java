package Data;

import models.Issue;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class IssuesDao {
    private static IssuesDao issuesDatabase = null;
    private Map<String, Issue> IssuesDb = new HashMap<>();

    // For testing purpose we do init some issues here
    {
        Issue javaIssue1 = new Issue("Programming","Java Issues", "high", "wonde");
        javaIssue1.randomlyAssignIssueId();
        Issue javaIssue2 = new Issue("Programming","Java Issues", "high", "wonde");
        javaIssue2.randomlyAssignIssueId();
        Issue javaIssue3 = new Issue("Programming","Java Issues", "high", "wonde");
        javaIssue3.randomlyAssignIssueId();
        Issue javaIssue4 = new Issue("Programming","Java Issues", "high", "wonde");
        javaIssue4.randomlyAssignIssueId();

        IssuesDb.put(javaIssue1.getAssignedTo(), javaIssue1);
        IssuesDb.put(javaIssue2.getAssignedTo(), javaIssue2);
        IssuesDb.put(javaIssue3.getAssignedTo(), javaIssue3);
        IssuesDb.put(javaIssue4.getAssignedTo(), javaIssue1);
    }

    // Default constructor
    private IssuesDao() {
    }

    public static IssuesDao getInstance() {
        if(issuesDatabase == null) {
            issuesDatabase = new IssuesDao();
        }

        return issuesDatabase;
    }

    // Instance methods for creating issue database

    public List<Issue> readIssuesFromDb(String username) {

        return IssuesDb.entrySet().stream()
                .filter(entry -> entry.getKey().equals(username))
                .map(Map.Entry::getValue)
                .collect(Collectors.toList());
    }

    public void addIssueToDb (String assignedTo, Issue newIssue) {
        IssuesDb.put(assignedTo, newIssue);
    }
}
