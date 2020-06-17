// Avoid `console` errors in browsers that lack a console.
$(function () {
    "use strict";

    if (window.location.pathname !== "/app") return;

    let deleteData = function (event) {
        event.preventDefault();
        let self = this;
        let issueId = $(self).attr('id');
        $.ajax({
            dataType: "html",
            url: "/api/issues?Id=" + issueId,
            type: "delete",
            success: function() {
                $(self).closest(".single-issue-container#"+issueId).remove();
                loadIssues();
            },
            error: function(error) {
                alert(error);
            }
        });
    }


    const appendIssue = function (fetchedIssue) {
        // Extract Elements
        let issueCategory = $('<h5 class = "mb-0 text-green lh-100">').html(fetchedIssue.issueCategory);

        let issueId = $('<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray>');
        issueId.text(fetchedIssue.issueId);


        let issueDescription = $('<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">');
        issueDescription.text(fetchedIssue.issueDescription);

        let issueSeverity = $('<span class = "badge float-left">').html(fetchedIssue.issueSeverity);
        severityBadgeAdjust(fetchedIssue, issueSeverity);
        let closeBtn = $('<a href ="#" class = "btn btn-warning">').html("Close Issue");
        let deleteBtn = $('<button class = "btn btn-danger">').click(deleteData).html("Delete Issue").attr("id", fetchedIssue.issueId);

        // Title
        let issueDetails = $('<h6 class="border-bottom border-gray pb-2 mb-0">').html($('<strong>').html("@Description"));

        // Construct issue display

        let issueHeader = $('<div class ="d-flex align-items-center p-3 my-3 text-white-50 bg-success rounded shadow-sm">');
        let issueHeaderContent = $('<div class="lh-100">')
        let issueBody = $('<div class="my-3 p-3 bg-white rounded shadow-sm">');
        let issueContentParent = $('<div class="media text-muted pt-3">')

        let separator = $('<small class= "d-block mt-3 text-right">').html($('<strong>').html("@IssueId: " + fetchedIssue.issueId));

        let singleIssueContainer = $("<div>", { id: fetchedIssue.issueId, class: "single-issue-container" });

        // create contents of issue header
        issueHeaderContent.append(issueCategory)
            .append(issueId)
            .append(issueSeverity);
        issueHeader.append(issueHeaderContent);

        // create contents of issue body
        issueContentParent.append(issueId)
            .append(issueDescription);

        issueBody.append(issueDetails)
            .append(issueContentParent)
            .append(separator)
            .append(closeBtn)
            .append(deleteBtn);


        singleIssueContainer.append(issueHeader).append(issueBody);

        $("#dboard").append(singleIssueContainer)

    }
    const severityBadgeAdjust = function (fetchedIssue, severityBadge) {
        if (fetchedIssue.issueSeverity === 'High') {
            severityBadge.addClass("badge-danger");
        } else if (fetchedIssue.issueSeverity === 'Medium') {
            severityBadge.addClass("badge-warning");
        } else {
            severityBadge.addClass("badge-info");
        }
    };

    let loadData = function (data) {
        if(data.length === 0) {
            return $("#dboard").html(function() {
                return $("<div>", { style: "min-height: 300px; display: flex; justify-content: center; align-items: center" })
                    .append(function() {
                        return $("<h3>", {text: "No Issues"})
                    })
            })
        }
        data.forEach(issue => appendIssue(issue));
    }

    let printError = function (data) {
        console.log(data.responseText);
    }

    let loadIssues = function () {
        $("#dboard").empty();
        $.get('/api/issues')
            .done(loadData)
            .error(printError);
    }

    loadIssues();
});











