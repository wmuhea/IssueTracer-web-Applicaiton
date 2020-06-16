package Data;

import com.google.gson.internal.LinkedTreeMap;
import models.Issue;
import storage.IssuesStorage;

import java.util.*;
import java.util.stream.Collectors;

public class IssuesDao {
    private static IssuesDao issuesDatabase = null;
    private Map<String, List<Issue>> issuesDb = new HashMap<>();

    // For testing purpose we do init some issues here
    {
        IssuesStorage.init();
    }

    // Default constructor
    private IssuesDao() {
    }

    public boolean writeDb() {
        System.out.println("-------------< DB Write >-------------");
        return IssuesStorage.writeDb(issuesDb);
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


    public void addIssueToDb(String assignedTo, Issue newIssue) throws Exception {

        if (!issuesDb.containsKey(assignedTo)) {
            issuesDb.put(assignedTo, new ArrayList<Issue>());
        }

        issuesDb.get(assignedTo).add(newIssue);

        if(!writeDb()) {
            throw new Exception("Could not write data to database");
        }
    }

    public void removeIssue(String assignedTo, String issueId) {
        System.out.println(issueId);
        List<Issue> issues = (List<Issue>) issuesDb.get(assignedTo);

        System.out.println(((Issue) issues.get(0)).getIssueId());


        for(int i = 0; i < issues.size(); i++) {
  //          if(issues.get(i).getIssueId().equals(issueId)) {
                System.out.println(issues.get(i).getClass());
           //System.out.println(i);
  //          }
        }


    }

}
