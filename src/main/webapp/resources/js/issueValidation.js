$(document).ready(function () {
    $("#create-issue-form").submit(function (event) {
        event.preventDefault();
        let issue = $("#issue");
        let description = $("#description");
        let assignTo = $("#assign");
        let severity = $("#severity");
        let error = $(".errorMsg");
        let success = $(".successMsg");

        error.text("");
        success.text("");

        if (((issue.val() || "").length > 0) && ((description.val() || "").length > 0) && ((assignTo.val() || "").length > 0)) {
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
                success.text("Issue successfully created.");
                issue.val(" ");
                description.val(" ");
                severity.val(" ");
                assignTo.val(" ");
                console.log(response);
            }).fail(function (response) {
                console.log(response);
                error.text("Please fill all the fields.");
            }).always(function() {
            })
        } else {
            error.text("Please fill all the fields.");
        }
    });

    function deleteBtnHandler(e) {
        e.preventDefault();
        let self = this;
        // console.log("Issue ", $(this).data("issueId"), " is about to be deleted");

        let issueId = $(this).data("issueId");
        let assignTo = $(this).data("assignTo");

        $.ajax({
            dataType: "html",
            url: "/api/admin/issues?Id=" + issueId + "&assignTo="+assignTo,
            type: 'delete',
            success: function() {
                // console.log(self);
                $(self).closest(".issue-item").remove();
                loadAdminIssues();
            },
            error: function (error) {
                console.log(error);
                // alert(error);
            }
        });

    }

    function displayIssueOnAdmin(issues) {
        let text = $("#issue-item-template").text();
        let container = $("#issues");
        let issueElem = $(text);

        issues.forEach(function (_item) {
            let item = issueElem.clone();

            item.attr("data-issue-id", _item.issueId);
            item.find('.issue-title').text(_item.issueCategory);
            item.find('.description').text(_item.issueDescription);
            item.find(".issue-item-action").attr("data-issue-id", _item.issueId).attr("data-assign-to", _item.assignedTo).click(deleteBtnHandler);

            container.append(item);
        });
    }

    function loadAdminIssues() {
        $.get("/api/issues")
            .done(function (response) {
                $("#issues").html("");
                if (response.length === 0) {
                    return $("#issues").html(function () {
                        return $("<div>", {style: "min-height: 300px; display: flex; justify-content: center; align-items: center"})
                            .append(function () {
                                return $("<h3>", {text: "No Issues"})
                            });
                    })
                }
                return displayIssueOnAdmin(response);
            })
            .catch(function (err) {
                console.log(err);
            })
    }


    if (window.location.pathname === "/app/admin") {
        console.log("Getting the issues");
        loadAdminIssues();
    }
});