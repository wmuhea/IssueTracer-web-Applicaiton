// Avoid `console` errors in browsers that lack a console.

    $(function () {
        $.get('/app?param=assignedIssues')
            .done(displayIssues);
    });

function displayIssues(data) {
    console.log(data);
    $(data).each(eachIssue => $('<div class="jumbotron">').html(eachIssue).appendTo($('#home')));
}
// Place any jQuery/helper plugins in here.