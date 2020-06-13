<%--
  Created by IntelliJ IDEA.
  User: rina
  Date: 6/10/20
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="partials/header.jsp"/>
<div class="container">
    <form action="/login" method="post">
        <%--        <div class="row">--%>
        <div class="six columns">
            <label for="Username">Username</label>
            <input class="u-full-width" type="text"  name="username"  value="${username}" placeholder="Username" id="Username">
        </div>
        <div class="six columns">
            <label for="Username">Password</label>
            <input class="u-full-width" type="password" name="password" placeholder="Password" id="Password">
        </div>
        <div class="four columns">

            <input type="checkbox" name="remember_me" value="true">Remember me

        </div>
        <div class="two columns">

            <input class="button-primary" type="submit" value="Login">
        </div>
        <%--        </div>--%>
    </form>
</div>
<jsp:include page="partials/footer.jsp"/>


