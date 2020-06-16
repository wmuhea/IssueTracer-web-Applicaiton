$(document).ready(function () {
    $.get("/api/issues")
        .done(function(response) {
            console.log(response);
        })
        .catch(function(err) {
            console.log(err);
        })

    $("#create-issue-form").submit(function (event) {
        event.preventDefault();
        let issue = $("#issue");
        let description = $("#description");
        let assignTo = $("#assign");
        let severity = $("#severity");
        let error = $(".errorMsg");

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
        }
            else {
                error.text("Please fill all the fields");
            }

        issue.val(" ");
        description.val(" ");
        severity.val(" ");
        assignTo.val(" ");


    });

});