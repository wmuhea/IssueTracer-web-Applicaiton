<jsp:include page="/partials/header.jsp"/>
<jsp:include page="/partials/nav.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb" id="about-section">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-6 col-lg-5 d-flex">
                <div class="img d-flex align-self-stretch align-items-center"
                     style="background-image:url('/resources/images/person_1.jpg'); margin-top: 80px; margin-bottom: 80px">
                </div>
            </div>
            <div class="col-md-6 col-lg-7 pl-lg-5 py-5">
                <div class="py-md-5">
                    <div class="row justify-content-start pb-3">
                        <div class="col-md-12 heading-section ftco-animate" >

                            <form class="bg-light p-5 login-form"  >
                                <h1>My Profile</h1>

                                <div class="columns twelve">
                                    <p class="errorsProfile"></p>
                                </div>

                                <div class="form-group">
                                    <input type="text" value="${user.firstname}" id="firstname" name="firstname" class="form-control" placeholder="John" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" id="lastname" value="${user.lastname}" name="lastname" class="form-control" placeholder="Doe">
                                </div>
                                <div class="form-group">
                                    <input type="text" id="phone" name="phone" value="${user.phone}" class="form-control" placeholder="+1 23456678" required >
                                </div>

                                <div class="form-group">
                                    <input type="text" id="address" name="address" value="${user.address}" class="form-control" placeholder="1000N street, Fairfield IA" required>
                                </div>
                                <div class="form-group">
                                    <label for="department" > Department </label>
                                    <select name ="department" id="department">
                                        <option value="lab">Lab Support</option>
                                        <option value="tech">Tech Support </option>
                                        <option value="food">Food and Housing </option>
                                        <option value="staff"> TA and staffs </option>
                                    </select><br>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Set Profile" id="createProfileButton" class="btn btn-primary py-3 px-5">
                                </div>


                            </form>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/partials/footer.jsp"/>