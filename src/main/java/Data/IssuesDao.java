package Data;

import models.Issue;
import storage.IssuesStorage;

import java.lang.reflect.Array;
import java.util.*;
import java.util.stream.Collectors;

public class IssuesDao {
    private static IssuesDao issuesDatabase = null;
    private Map<String, List<Issue>> issuesDb = new HashMap<>();

    // For testing purpose we do init some issues here
    {
        IssuesStorage.init();

        Issue javaIssue1 = new Issue("Programming","Java Issues", "high", "wonde");
        Issue javaIssue2 = new Issue("Programming","Java Issues", "medium", "wonde");
        Issue javaIssue3 = new Issue("Programming","Java Issues", "high", "wonde");
        Issue javaIssue4 = new Issue("Programming","Java Issues", "high", "wonde");

        Issue [] issuesAssignedToUser = new Issue[] {javaIssue1, javaIssue2, javaIssue3, javaIssue4};
        issuesDb.put(javaIssue1.getAssignedTo(), Arrays.asList(issuesAssignedToUser));
    }

    // Default constructor
    private IssuesDao() {
    }

    public boolean writeDb() {
        return IssuesStorage.writeDb(issuesDb);
    }

    public void loadDb() {
        issuesDb = IssuesStorage.load();
    }

    public static IssuesDao getInstance() {
        if (issuesDatabase == null) {
            issuesDatabase = new IssuesDao();
        }

        return issuesDatabase;
    }

    // Instance methods for creating issue database

    public List<Issue> readIssuesFromDb(String username) {
        return issuesDb.get(username);
    }

    public void addIssueToDb(String assignedTo, Issue newIssue) throws Exception {

        if (!issuesDb.containsKey(assignedTo)) {
            issuesDb.put(assignedTo, new ArrayList<Issue>());
        }

        issuesDb.get(assignedTo).add(newIssue);

        if(!writeDb()) {
            throw new Exception("Could not write data to database");
        }
    }

    public void removeIssue(String assignedTo, Issue issue) {
        issuesDb.get(assignedTo).remove(issue);
    }


}
