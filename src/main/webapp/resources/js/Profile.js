$(function () {
    let createProfileButton = $('#createProfileButton');
    let firstname = $("#firstname");
    let lastname = $("#lastname");
    let phone = $("#phone");
    let address = $("#address");
    let department = $("#department");
    let errorStatus = $(".errorsProfile");
    let deleteButton = $("#deleteProfileButton")

    createProfileButton.click(function (event) {
        event.preventDefault();


        if ((firstname.val().length > 0) && (lastname.val().length > 0) && (phone.val().length > 0) && (address.val().length > 0) && (department.val().length > 0)) {
            $.ajax({
                url: "/api/profile",
                method: "post",
                data: {
                    firstname: firstname.val(),
                    lastname: lastname.val(),
                    phone: phone.val(),
                    address: address.val(),
                    department: department.val()
                }
            }).done(function () {
                errorStatus.text("Profile successfully created.");

            }).error(function (response) {
                let err = (response.responseJSON);
                $('.errors').text(err.join("<br/>"));
                $(self).attr('disabled', false);
            })

        } else {
            errorStatus.text("Please fill all the fields.");
        }


    });

    deleteButton.click(function (event) {
        event.preventDefault();
        let self = this;
        let user = $(self).data("user");
        console.log(user);
        $.ajax({
            dataType: "html",
            url: "/api/profile",
            type: "delete",
            success: function () {
                errorStatus.text("Profile successfully deleted.");
                // firstname.val(" ");
                // lastname.val(" ");
                // phone.val(" ");
                // address.val(" ");
                // setTimeout(function () {
                location.href = "/logout";


            },
            error: function (error) {
                alert(error);
            }
        });
    });


});


