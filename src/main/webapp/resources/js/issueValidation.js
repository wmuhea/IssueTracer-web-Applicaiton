$(document).ready(function () {


    $("#create-issue-form").submit(function (event) {
        event.preventDefault();
        if (($("#issue").val().length > 0) && ($("#description").val().length > 0) && ($("#assign").val().length > 0)) {
            $.ajax({
                url: "/api/issues",
                method: "post",
                data: {
                    issue: $("#issue").val(),
                    description: $("#description").val(),
                    assign: $("#assign").val()
                }
            }).done(function (response) {
                console.log(response);

            }).fail(function (error) {
                console.log(error);

            })
        }
    });

});