package models;

import java.util.UUID;

public class Issue {
    private UUID issueId;
    private String issueCategory;
    private String issueDescription;
    private String issueSeverity;
    private String assignedTo;

    public Issue() {
    }

    public Issue(String issueCategory, String issueDescription, String issueSeverity, String assignedTo) {
        this.issueCategory = issueCategory;
        this.issueDescription = issueDescription;
        this.issueSeverity = issueSeverity;
        this.assignedTo = assignedTo;
        randomlyAssignIssueId();
    }

    public UUID getIssueId() {
        return issueId;
    }

    public String getIssueCategory() {
        return issueCategory;
    }

    public void setIssueCategory(String issueCategory) {
        this.issueCategory = issueCategory;
    }

    public String getIssueDescription() {
        return issueDescription;
    }

    public void setIssueDescription(String issueDescription) {
        this.issueDescription = issueDescription;
    }

    public String getIssueSeverity() {
        return issueSeverity;
    }

    public void setIssueSeverity(String issueSeverity) {
        this.issueSeverity = issueSeverity;
    }

    public String getAssignedTo() {
        return assignedTo;
    }

    public void setAssignedTo(String assignedTo) {
        this.assignedTo = assignedTo;
    }

    public void randomlyAssignIssueId () {
       UUID randomId = UUID.randomUUID();
       this.issueId = randomId;
    }
}
