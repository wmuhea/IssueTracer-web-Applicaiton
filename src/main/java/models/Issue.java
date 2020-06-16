package models;

import java.util.UUID;

public class Issue {
    private String issueId;
    private String issueCategory;
    private String issueDescription;
    private String issueSeverity;
    private String assignedTo;
    private String status;

    public Issue() {
    }

    public Issue(String issueCategory, String issueDescription, String issueSeverity, String assignedTo) {
        this.issueId = UUID.randomUUID().toString().substring(0, 5);
        this.issueCategory = issueCategory;
        this.issueDescription = issueDescription;
        this.issueSeverity = issueSeverity;
        this.assignedTo = assignedTo;
        this.status  = "NR";
    }


    public String getIssueId() {
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

    public void setIssueId(String issueId) {
        this.issueId = issueId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
