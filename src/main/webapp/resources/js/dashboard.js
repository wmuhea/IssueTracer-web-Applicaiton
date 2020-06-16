// Avoid `console` errors in browsers that lack a console.
/*
<div class="my-3 p-3 bg-white rounded shadow-sm">
        <h6 class="border-bottom border-gray pb-2 mb-0">Recent updates</h6>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&amp;bg=007bff&amp;fg=007bff&amp;size=1" alt="32x32" class="mr-2 rounded" style="width: 32px; height: 32px;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_172ba921f21%20text%20%7B%20fill%3A%23007bff%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_172ba921f21%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23007bff%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2212.296875%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@username</strong>
            Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
          </p>
        </div>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&amp;bg=e83e8c&amp;fg=e83e8c&amp;size=1" alt="32x32" class="mr-2 rounded" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_172ba921f25%20text%20%7B%20fill%3A%23e83e8c%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_172ba921f25%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23e83e8c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2212.296875%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="width: 32px; height: 32px;">
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@username</strong>
            Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
          </p>
        </div>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&amp;bg=6f42c1&amp;fg=6f42c1&amp;size=1" alt="32x32" class="mr-2 rounded" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_172ba921f27%20text%20%7B%20fill%3A%236f42c1%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_172ba921f27%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%236f42c1%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2212.296875%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="width: 32px; height: 32px;">
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@username</strong>
            Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
          </p>
        </div>
        <small class="d-block text-right mt-3">
          <a href="https://getbootstrap.com/docs/4.1/examples/offcanvas/#">All updates</a>
        </small>
      </div>

 */

$(function () {
        $.get('/api/issues')
            .done(displayIssues)
            .error(printErrorMessage);
});

function printErrorMessage(data) {
    console.log(data.responseText);
}
function displayIssues(data) {
    if(data === []) {
        let did = $('<h1 class="col-md-10">').html("There is no assigned Issue for you");
        $("#home").append(did);

    }
    else {

        data.forEach(issue => appendIssue(issue));
    }

}

function appendIssue(fetchedIssue) {
    // Extract Elements
    let signalButton = $('<button type="button" class="btn btn-primary btn-circle btn-sm">');
    let issueCategory = $('<h5 class = "mb-0 text-green lh-100">').html(fetchedIssue.issueCategory);

    let issueId = $('<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray>');
        issueId.append($('<strong>').html("@IssueId"));
        issueId.text(fetchedIssue.issueId);


    let issueDescription = $('<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">');
        issueDescription.append($('<strong>').html("@Description"));
        issueDescription.text(fetchedIssue.issueDescription);

    let assignedTo = $('<h6>').html(fetchedIssue.assignedTo);
    let issueSeverity = $('<span class = "badge float-left">').html(fetchedIssue.issueSeverity);
    severityBadgeAdjust(fetchedIssue, issueSeverity);
    let closeBtn = $('<a href ="#" class = "btn btn-warning">').html("Close Issue");
    let deleteBtn = $('<a href ="#" class = "btn btn-danger">').html("Delete Issue");

    // Title
    let issueDetails =  $('<h6 class="border-bottom border-gray pb-2 mb-0">').html("Issue Details");

    // Construct issue display

    let issueHeader = $('<div class ="d-flex align-items-center p-3 my-3 text-white-50 bg-success rounded shadow-sm">');
    let issueHeaderContent = $('<div class="lh-100">')
    let issueBody = $('<div class="my-3 p-3 bg-white rounded shadow-sm">').append();
    let issueContentParent = $('<div class="media text-muted pt-3">')



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
        .append(closeBtn)
        .append(deleteBtn);

    $("#home").append(issueHeader)
        .append(issueBody);
}

function severityBadgeAdjust(fetchedIssue, severityBadge) {
    if(fetchedIssue.issueSeverity === 'high') {
        severityBadge.addClass("badge-danger");
    }
    else if(fetchedIssue.issueSeverity === 'medium') {
        severityBadge.addClass("badge-warning");
    }
    else {
        severityBadge.addClass("badge-info");
    }
}
