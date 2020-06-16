// Avoid `console` errors in browsers that lack a console.

(function () {
    "use strict";
    $(function () {

        $.get('/api/issues')
            .done(displayIssues)
            .error(printErrorMessage);
        $('#ftco-nav ul:first li:last a').click = updateNavBarOnLogout;
    });

    function printErrorMessage(data) {
        console.log(data.responseText);
    }

    function displayIssues(data) {
        $('body').css('padding-top', '60px')

        data.forEach(issue => appendIssue(issue));
        updateNavBarOnLogin();

    }

    function appendIssue(fetchedIssue) {
        // Extract Elements
        let issueCategory = $('<h5 class = "mb-0 text-green lh-100">').html(fetchedIssue.issueCategory);

        let issueId = $('<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray>');
        issueId.text(fetchedIssue.issueId);


        let issueDescription = $('<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">');
        issueDescription.text(fetchedIssue.issueDescription);

        let issueSeverity = $('<span class = "badge float-left">').html(fetchedIssue.issueSeverity);
        severityBadgeAdjust(fetchedIssue, issueSeverity);
        let closeBtn = $('<a href ="#" class = "btn btn-warning">').html("Close Issue");
        let deleteBtn = $('<a href ="#" class = "btn btn-danger">').html("Delete Issue");

        // Title
        let issueDetails =  $('<h6 class="border-bottom border-gray pb-2 mb-0">').html($('<strong>').html("@Description"));

        // Construct issue display

        let issueHeader = $('<div class ="d-flex align-items-center p-3 my-3 text-white-50 bg-success rounded shadow-sm">');
        let issueHeaderContent = $('<div class="lh-100">')
        let issueBody = $('<div class="my-3 p-3 bg-white rounded shadow-sm">');
        let issueContentParent = $('<div class="media text-muted pt-3">')

        let separator = $('<small class= "d-block mt-3 text-right">').html($('<strong>').html("@IssueId: " + fetchedIssue.issueId));


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

        $("#dboard").append(issueHeader)
            .append(issueBody);
    }

    function severityBadgeAdjust(fetchedIssue, severityBadge) {
        if(fetchedIssue.issueSeverity === 'High') {
            severityBadge.addClass("badge-danger");
        }
        else if(fetchedIssue.issueSeverity === 'Medium') {
            severityBadge.addClass("badge-warning");
        }
        else {
            severityBadge.addClass("badge-info");
        }
    }

    function updateNavBarOnLogin() {
        console.log("ezihga");
        $('#ftco-nav ul:first li:nth-child(4)').addClass("d-none");
        $('#ftco-nav ul:first li:first a').html("DashBoard").attr("href","/app/dashboard.jsp");
        $('#ftco-nav ul:first li:last a').html("Logout");


    }

    function updateNavBarOnLogout() {
        console.log("enega");
        $('#ftco-nav ul:first li:nth-child(4)').removeClass("d-none");
        $('#ftco-nav ul:first li:first a').html("Home").attr("href","/");
        $('#ftco-nav ul:first li:last a').html("Login");

    }
}());