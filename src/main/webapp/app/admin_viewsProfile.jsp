<jsp:include page="../partials/header.jsp"/>
<jsp:include page="../partials/nav.jsp"/>
<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-12">
            <h1>User Profiles</h1>

        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div id="users"></div>
        </div>
    </div>
</div>

<script id="user-item-template" type="template">
    <div class="user-item" style="margin-bottom: 20px; border: 1px solid #ececec; padding: 20px">
        <h3 class="username">Dumm1</h3>
        <h3 class="password">Dumm2</h3>
        <div id="button-wrapper">
            <button class="btn btn-danger issue-item-action">Delete</button>
        </div>
    </div>
</script>


<jsp:include page="../partials/footer.jsp"/>


