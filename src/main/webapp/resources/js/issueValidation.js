$(document).ready(function () {
    $("#create-issue-form").submit(function (event) {
        event.preventDefault();
        let issue = $("#issue");
        let description = $("#description");
        let assignTo = $("#assign");
        let severity = $("#severity");
        let error = $(".errorMsg");
        let success=$(".successMsg");

        if ((issue.val().length > 0) && (description.val().length > 0) && (assignTo.val().length > 0)) {
            $.ajax({
                url: "/api/issues",
                method: "post",
                data: {
                    issue: issue.val(),
                    description: description.val(),
                    severity: severity.val(),
                    assign: assignTo.val()
                }
            }).done(function (response) {
                console.log(response);

            }).fail(function (response) {
                console.log(response);
            })
            success.text("Issue successfully created.");
        }
            else {
                error.text("Please fill all the fields.");
            }

        issue.val(" ");
        description.val(" ");
        severity.val(" ");
        assignTo.val(" ");


    });

    function deleteBtnHandler(e) {
        e.preventDefault();
        console.log("Issue ", $(this).data("issueId"), " is about to be deleted");
    }

    function displayIssueOnAdmin(issues) {
        let text = $("#issue-item-template").text();
        let container = $("#issues");
        let issueElem = $(text);
        console.log(issues);
        issues.forEach(function(_item) {
            let item = issueElem.clone();

            item.attr("data-issue-id", _item.issueId);
            item.find('.issue-title').text(_item.issueCategory);
            item.find('.description').text(_item.issueDescription);
            item.find(".issue-item-action").attr("data-issue-id", _item.issueId).click(deleteBtnHandler);

            container.append(item);
        });
    }

    if(window.location.pathname === "/app/admin") {
        console.log("Getting the issues");
        $.get("/api/issues")
            .done(function (response) {
                displayIssueOnAdmin(response);
            })
            .catch(function (err) {
                console.log(err);
            })
    }
});