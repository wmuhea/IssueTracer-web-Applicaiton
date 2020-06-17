package Data;

import com.google.gson.Gson;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import models.Issue;
import storage.IssuesStorage;

import java.util.*;
import java.util.stream.Collectors;

public class IssuesDao {
    private static IssuesDao issuesDatabase = null;
    private Map<String, List<Issue>> issuesDb = new HashMap<>();
    private Gson gson = new Gson();

    // For testing purpose we do init some issues here
    {
        IssuesStorage.init();
    }

    // Default constructor
    private IssuesDao() {
    }

    public void writeDb() {
        System.out.println("-------------< DB Write >-------------");

        try {
            if(!IssuesStorage.writeDb(issuesDb)) {
                throw new Exception("Could not write data to database");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public void loadDb() {
        System.out.println("-------------< DB Load >-------------");
        issuesDb = IssuesStorage.load();
    }



    public static IssuesDao getInstance() {
        if (issuesDatabase == null) {
            issuesDatabase = new IssuesDao();
            issuesDatabase.loadDb();
        }

        return issuesDatabase;
    }

    // Instance methods for creating issue database
    public List<Issue> readIssuesFromDb(String username) {
        List<Issue> issues = issuesDb.get(username);

        return issues == null ? new ArrayList<>() : issues;
    }

    public List<Issue> readAllIssues(){
        return issuesDb.values().stream().flatMap(x -> x.stream()).collect(Collectors.toList());
    }


    public void addIssueToDb(String assignedTo, Issue newIssue) {

        if (!issuesDb.containsKey(assignedTo)) {
            issuesDb.put(assignedTo, new ArrayList<Issue>());
        }

        issuesDb.get(assignedTo).add(newIssue);
        writeDb();
    }

    public void removeIssue(String assignedTo, String issueId) {
        List<Issue> issues = issuesDb.get(assignedTo);

        for(int i = 0; i < issues.size(); i++) {
            Issue issue = gson.fromJson(gson.toJson(issues.get(i)), Issue.class);
            if(issue.getIssueId().equals(issueId)) {
                issues.remove(i);
            }
        }

        writeDb();
    }

    public void updateIssueStatus(String username, String issueId) {
        List<Issue> issueList = issuesDb.get(username);

        for(int i = 0; i < issueList.size(); i++) {
           Issue issue = gson.fromJson(gson.toJson(issueList.get(i)), new TypeToken<Issue>(){}.getType());
            if(issue.getIssueId().equals(issueId)) {
                issueList.get(i).setStatus("R");
            }
        }
        writeDb();
    }
}
