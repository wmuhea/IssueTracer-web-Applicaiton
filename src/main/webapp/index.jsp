<%--
  Created by IntelliJ IDEA.
  User: rina
  Date: 6/10/20
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="partials/header.jsp"/>
<h1>
  Home page
</h1>
<% if (session.getAttribute("user") == null) { %>
<div>
  <a href="/login"> Login </a>
</div>
<% } %>

<jsp:include page="partials/footer.jsp"/>
