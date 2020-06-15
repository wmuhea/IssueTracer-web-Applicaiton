// Avoid `console` errors in browsers that lack a console.

    $(function () {
        $.get('/app?param=assignedIssues')
            .done(displayIssues);
    });

function displayIssues(data) {
    if(data) {
        data.forEach(issue => appendIssue(issue));
    }
    else {
        let did = $('<h1 class="col-md-10">').html("There is no assigned Issue for you");
        $("#home").append(did);
    }

}

function appendIssue(fetchedIssue) {
    let issueParentNode = $('<div class = "jumbotron">');
    let issueSeverity = $('<span class = "badge">').html(fetchedIssue.issueSeverity);
    severityBadgeAdjust(fetchedIssue, issueSeverity);

    let issueId = $('<h2>').html(fetchedIssue.issueId).append(issueSeverity);
    let issueCategory = $('<h5>').html(fetchedIssue.issueCategory);
    let issueDescription = $('<p>').html(fetchedIssue.issueDescription);
    let assignedTo = $('<p>').html(fetchedIssue.assignedTo);
    let closeBtn = $('<a href ="#" class = "btn btn-warning">').html("Close Issue");
    let deleteBtn = $('<a href ="#" class = "btn btn-danger">').html("Delete Issue");

    issueParentNode.append(issueId)
        .append(issueCategory)
        .append(issueDescription)
        .append(assignedTo)
        .append(closeBtn)
        .append(deleteBtn);

    $("#home").append(issueParentNode);
}

function severityBadgeAdjust(fetchedIssue, severityBadge) {
    if(fetchedIssue.issueSeverity === 'high') {
        severityBadge.addClass("badge-danger");
    }
    else if(fetchedIssue.issueSeverity === 'medium') {
        severityBadge.addClass("badge-warning");
    }
    else {
        severityBadge.addClass("badge-info");
    }
}
