// Avoid `console` errors in browsers that lack a console.
(function () {
    "use strict";

    $(function () {

        $.get('/api/issues')
            .done(dashBoardModule.loadData)
            .error(dashBoardModule.printError);
        $('#logout').on('click',dashBoardModule.logout);
            window.deleteData = dashBoardModule.deleteData;

    });
    let dashBoardModule = (function () {

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
            let deleteBtn = $('<button class = "btn btn-danger" onclick="deleteData(this)">').html("Delete Issue").attr("id", fetchedIssue.issueId);

            // Title
            let issueDetails = $('<h6 class="border-bottom border-gray pb-2 mb-0">').html($('<strong>').html("@Description"));

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

            //  let singleIssueContainer = ($('<div>').attr("id", fetchedIssue.issueId));
            $("#dboard").append(issueHeader)
                .append(issueBody);


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


        return {
            loadData: function (data) {
                        $('body').css('padding-top', '60px')
                        data.forEach(issue => appendIssue(issue));
            },
            deleteData: function (del, event) {
                let issueId = $(del).attr('id');
                console.log(issueId);
                $.get("/api/issues", {"Id": issueId}, dashBoardModule.loadData,'jason');

            },
            printError: function (data) {
                console.log(data.responseText);
            },
            logout : function () {
                    $.get("/logout");
            }

        };
    })();
})();











