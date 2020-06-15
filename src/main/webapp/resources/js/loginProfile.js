$(function () {
    let loginButton = $('#loginButton');

    // let clickHandler = function(event) {
    //     event.preventDefault();

    //     $.ajax({
    //         url: "/login",
    //         type: "post",
    //         data: {username: $('#username').val(), password: $('#password').val()},
    //     }).success(function(response) {
    //         location.href = "/app";
    //     }).fail(function(response) {
    //         let err = (response.responseJSON)
    //         $('.errors').text(err.join("<br/>"));
    //     })
    //         // .always(function () {
    //         //     loginButton.prop('disabled', false);
    //         // });
    //     // loginButton.prop('disabled', true);
    //     $('#username').val("");
    //     $('#password').val("");
    //
    // }
    loginButton.click(function (event) {
        event.preventDefault();
        let self = this;
        $.post("/api/login", {username: $('#username').val(), password: $('#password').val()})
            .done(function (response) {
                $(this).attr('disabled', false);
                location.href = "/app";
            }).error(function (response) {
            let err = (response.responseJSON);
            $('.errors').text(err.join("<br/>"));
            $(self).attr('disabled', false);
        }).always(function() {
            console.log("This is working");
        });

        $(self).attr('disabled', true);
    });

});
