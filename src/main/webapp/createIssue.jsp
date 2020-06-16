
<jsp:include page="partials/header.jsp" />

<jsp:include page="partials/nav.jsp"/>
<h1> Log issue</h1>

<form action="#" id="create-issue-form">
    <div>
        <p class="errorMsg"></p>
    </div>
<div class="createIssue">
    <label>Issue </label>
    <input type="text" name="issue" placeholder="issue" id="issue"><br>
    <label> Description </label>
    <input type="text" name="description" placeholder="description" id="description"><br>
    <label for="severity"> Severity</label>
    <select name ="severity" id="severity">
        <option>High</option>
        <option> Medium</option>
        <option> Low</option>
    </select><br>
    <label for="assign" > Assign to:</label>
    <select name ="assign" id="assign">
        <option value="wonde">Wondwosen</option>
        <option value="tije"> Tijesunimi</option>
        <option value="rina"> Rina</option>
        <option value="ruby"> Ruby</option>
    </select><br>

    <button type="submit" id="createIssueButton">Submit</button>
</div>
</form>

<jsp:include page="partials/footer.jsp" />3
