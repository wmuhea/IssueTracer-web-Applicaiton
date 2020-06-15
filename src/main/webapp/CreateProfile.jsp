<%--
  Created by IntelliJ IDEA.
  User: rina
  Date: 6/10/20
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>

<div class="container">
    <form action="/profile" method="post">
        <%--        <div class="row">--%>
        <div class="twelve columns">
            <label for="Firstname">Firstname</label>
            <input class="u-full-width" type="text"  name="firstname"  value="${firstname}" placeholder="John" id="Firstname">
        </div>
            <div class="twelve columns">
                <label for="Secondname">Secondname</label>
                <input class="u-full-width" type="text"  name="secondname"  value="${secondname}" placeholder="Doe" id="Secondname">
            </div>
        <div class="six columns">
            <label for="Password">Password</label>
            <input class="u-full-width" type="password" name="password" placeholder="Password" id="Password">
        </div>
        <div class="four columns">

            <input type="checkbox" name="remember_me" value="true">Remember me

        </div>
        <div class="two columns">

            <input class="button-primary" type="submit" value="Create Profile">
        </div>
        <%--        </div>--%>
    </form>
</div>



