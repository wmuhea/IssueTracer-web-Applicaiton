
<jsp:include page="partials/header.jsp" />
<h1> Log issue</h1>
<form action="#" id="create-issue-form">
<div class="createIssue">
    <label>Issue </label>
    <input type="text" name="issue" placeholder="issue" id="issue"><br>
    <label> Description </label>
    <input type="text" name="description" placeholder="description" id="description"><br>
    <label for="assign" > Assign to:</label>
    <select name ="assign" id="assign">
        <option>Wondwosen</option>
        <option> Tijesunimi</option>
        <option> Rina</option>
        <option> Ruby</option>
    </select><br>

    <button type="submit" id="createIssueButton">Submit</button>
</div>
</form>

<jsp:include page="partials/footer.jsp" />
