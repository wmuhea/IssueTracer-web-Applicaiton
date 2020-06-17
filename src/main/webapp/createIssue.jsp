<jsp:include page="partials/header.jsp"/>
<jsp:include page="partials/nav.jsp"/>

<div class="login-wrapper">
    <div class="row no-gutters block-9">
        <div class="col-md-6 form-wrapper order-md-last d-flex">

            <div class="bg-light p-5 login-form">
                <form action="#" id="create-issue-form">
                    <h1> Log issue</h1>
                    <div>
                        <p class="errorMsg"></p>
                    </div>
                    <div>
                        <p class="successMsg"></p>
                    </div>


                    <div class="form-group">
                        <label for="issue">Issue </label>
                        <select name="issue" id="issue">
                            <option>Academic Honor Code</option>
                            <option>Academic Policies</option>
                            <option>Campus Safety Violations</option>
                            <option>Computer and Network Issues</option>
                            <option>Equal Opportunity Policy</option>
                            <option>Financial Aid and Student Accounts</option>
                            <option>Grades</option>
                            <option>Special Needs Accommodation</option>
                            <option>Student Life Issues</option>
                        </select><br>
                    </div>
                    <div class="form-group">
                        <label> Description </label>
                        <textarea name="description" placeholder="Description" id="description" rows="5"
                                  cols="50"></textarea>
                        <br>
                    </div>
                    <div class="form-group">
                        <label for="severity"> Severity</label>
                        <select name="severity" id="severity">
                            <option>High</option>
                            <option> Medium</option>
                            <option> Low</option>
                        </select>
                        <br>
                    </div>
                    <div class="form-group">
                        <label for="assign"> Assign to:</label>
                        <select name="assign" id="assign">
                            <option value="wonde">Wondwosen</option>
                            <option value="tije"> Tijesunimi</option>
                            <option value="rina"> Rina</option>
                            <option value="ruby"> Ruby</option>
                        </select>
                        <br>
                    </div>

                    <div class="form-group">
                        <input type="submit" id="createIssueButton" class="btn btn-primary py-3 px-5" value="Submit">
                        <br>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-6 d-flex">
            <div id="login-image" class="bg-white"></div>
        </div>
    </div>
</div>
<jsp:include page="partials/footer.jsp"/>
