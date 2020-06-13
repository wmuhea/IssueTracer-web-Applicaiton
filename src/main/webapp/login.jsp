
<jsp:include page="partials/header.jsp"/>
<jsp:include page="partials/nav.jsp"/>


<div class="login-wrapper">
    <div class="row no-gutters block-9">
        <div class="col-md-6 form-wrapper order-md-last d-flex">
            <form action="/login" class="bg-light p-5 login-form">
                <h1>Login</h1>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password">
                </div>


                <div class="form-group">
                    <input type="submit" value="Login" class="btn btn-primary py-3 px-5">
                </div>
            </form>

        </div>

        <div class="col-md-6 d-flex">
            <div id="map" class="bg-white"></div>
        </div>
    </div>
</div>
<%--<div class="container">--%>
<%--    <form action="/login" method="post">--%>
<%--        &lt;%&ndash;        <div class="row">&ndash;%&gt;--%>
<%--        <div class="six columns">--%>
<%--            <label for="Username">Username</label>--%>
<%--            <input class="u-full-width" type="text"  name="username"  value="${username}" placeholder="Username" id="Username">--%>
<%--        </div>--%>
<%--        <div class="six columns">--%>
<%--            <label for="Username">Password</label>--%>
<%--            <input class="u-full-width" type="password" name="password" placeholder="Password" id="Password">--%>
<%--        </div>--%>
<%--        <div class="four columns">--%>

<%--            <input type="checkbox" name="remember_me" value="true">Remember me--%>

<%--        </div>--%>
<%--        <div class="two columns">--%>

<%--            <input class="button-primary" type="submit" value="Login">--%>
<%--        </div>--%>
<%--        &lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--    </form>--%>
<%--</div>--%>
<jsp:include page="partials/footer.jsp"/>


