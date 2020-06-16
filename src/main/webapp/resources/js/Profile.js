$(function () {
    let createButton = $('#createProfileButton');
    let firstname = $("#firstname");
    let lastname = $("#lastname");
    let phone = $("#phone");
    let address = $("#address");
    let department = $("#department");
    let errorStatus=$(".errorsProfile");

    createButton.click(function (event) {
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
            }).done(function (response) {
                console.log(response);

            }).fail(function (response) {
                console.log(response);
            })
            errorStatus.text("Profile successfully created.");
        }
        else {
            errorStatus.text("Please fill all the fields.");
        }

        // issue.val(" ");
        // description.val(" ");
        // severity.val(" ");
        // assignTo.val(" ");


    });

});


