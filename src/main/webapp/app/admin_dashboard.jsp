<jsp:include page="../partials/header.jsp"/>
<jsp:include page="../partials/nav.jsp"/>
<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-12">
            <h1>Welcome ${user.username}</h1>
<%--            <a href="admin_viewsProfile.jsp"><img src="../resources/images/testimony-2.jpg" height="80px" width="80px">View Profiles</a>--%>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div id="issues"></div>
        </div>
    </div>
</div>

<script id="issue-item-template" type="template">
    <div class="issue-item" style="margin-bottom: 20px; border: 1px solid #ececec; padding: 20px">
        <h3 class="issue-title">Dumm1</h3>
        <p class="description">Dumm2</p>
        <div id="button-wrapper">
            <button class="btn btn-danger issue-item-action">Delete</button>
        </div>
    </div>
</script>


<jsp:include page="../partials/footer.jsp"/>


