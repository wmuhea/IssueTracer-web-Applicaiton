<%--
  Created by IntelliJ IDEA.
  User: rubyt
  Date: 6/12/2020
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1> Log issue</h1>
<form action="/createIssue" method="post">
<div>
    <label>Issue </label>
    <input type="text" name="issue" placeholder="issue"><br>
    <label> Description </label>
    <input type="text" name="description" placeholder="description"><br>
    <label for="assign" > Assign to:</label>
    <select name ="assign" id="assign">
        <option>Wondwosen</option>
        <option> Tijesunimi</option>
        <option> Rina</option>
        <option> Ruby</option>
    </select><br>

    <button type="submit">Submit</button>
</div>
</form>

</body>
</html>
