<jsp:include page="partials/header.jsp"/>

<jsp:include page="partials/nav.jsp"/>

<section id="home-section" class="hero">
    <h3 class="vr">Welcome to Issue Tracer</h3>
    <div class="home-slider js-fullheight owl-carousel">
        <div class="slider-item js-fullheight">
            <div class="overlay"></div>
            <div class="container-fluid p-0">
                <div class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"
                     data-scrollax-parent="true">
                    <div class="one-third order-md-last img js-fullheight"
                         style="background-image:url('./resources/images/bg_1.jpg');">
                        <div class="overlay"></div>
                    </div>
                    <div class="one-forth d-flex js-fullheight align-items-center ftco-animate"
                         data-scrollax=" properties: { translateY: '70%' }">
                        <div class="text">
                            <span class="subheading">Welcome to the Issue Tracer</span>
                            <h1 class="mb-4 mt-3">Your Complaints <span>Matter</span></h1>
                            <p>A problem shared is a problem is solved</p>

                            <p><a href="/login" class="btn btn-primary px-5 py-3 mt-3">Submit a complaint</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<%--        <div class="slider-item js-fullheight">--%>
<%--            <div class="overlay"></div>--%>
<%--            <div class="container-fluid p-0">--%>
<%--                <div class="row d-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"--%>
<%--                     data-scrollax-parent="true">--%>
<%--                    <div class="one-third order-md-last img js-fullheight"--%>
<%--                         style="background-image:url('./resources/images/bg_2.jpg');">--%>
<%--                        <div class="overlay"></div>--%>
<%--                    </div>--%>
<%--                    <div class="one-forth d-flex js-fullheight align-items-center ftco-animate"--%>
<%--                         data-scrollax=" properties: { translateY: '70%' }">--%>
<%--                        <div class="text">--%>
<%--                            <span class="subheading">Welcome to the digilab</span>--%>
<%--                            <h1 class="mb-4 mt-3"><span>Strategic</span> Design And <span>Technology</span> Agency</h1>--%>
<%--                            <p>A small river named Duden flows by their place and supplies it with the necessary--%>
<%--                                regelialia. It is a paradisematic country.</p>--%>

<%--                            <p><a href="#" class="btn btn-primary px-5 py-3 mt-3">Get in touch</a></p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</section>


<section class="ftco-section ftco-no-pb ftco-no-pt ftco-services bg-light" id="services-section">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 ftco-animate py-5 nav-link-wrap">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link px-4 active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab"
                       aria-controls="v-pills-1" aria-selected="true"><span class="mr-3 flaticon-ideas"></span> Academic
                        Honour Code</a>

                    <a class="nav-link px-4" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab"
                       aria-controls="v-pills-2" aria-selected="false"><span class="mr-3 flaticon-flasks"></span>
                        Academic Policies</a>

                    <a class="nav-link px-4" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab"
                       aria-controls="v-pills-3" aria-selected="false"><span class="mr-3 flaticon-analysis"></span>
                        Campus Safety Violations
                    </a>

                    <a class="nav-link px-4" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab"
                       aria-controls="v-pills-4" aria-selected="false"><span class="mr-3 flaticon-web-design"></span>
                        Computer and
                        Network Issues</a>

                    <a class="nav-link px-4" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab"
                       aria-controls="v-pills-4" aria-selected="false"><span class="mr-3 flaticon-ux-design"></span>
                        Equal Opportunity Policy
                    </a>

                    <a class="nav-link px-4" id="v-pills-5-tab" data-toggle="pill" href="#v-pills-5" role="tab"
                       aria-controls="v-pills-5" aria-selected="false"><span class="mr-3 flaticon-innovation"></span>
                        Financial Aid and Student Accounts</a>

                    <a class="nav-link px-4" id="v-pills-6-tab" data-toggle="pill" href="#v-pills-6" role="tab"
                       aria-controls="v-pills-6" aria-selected="false"><span class="mr-3 flaticon-idea"></span>
                        Grades</a>

                    <a class="nav-link px-4" id="v-pills-6-tab" data-toggle="pill" href="#v-pills-7" role="tab"
                       aria-controls="v-pills-6" aria-selected="false"><span class="mr-3 flaticon-idea"></span>
                        Special Needs Accommodation</a>

                    <a class="nav-link px-4" id="v-pills-6-tab" data-toggle="pill" href="#v-pills-8" role="tab"
                       aria-controls="v-pills-6" aria-selected="false"><span class="mr-3 flaticon-idea"></span>
                        Students Life Issues</a>
                </div>
            </div>
            <div class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center">

                <div class="tab-content pl-md-5" id="v-pills-tabContent">

                    <div class="tab-pane fade show active py-5" id="v-pills-1" role="tabpanel"
                         aria-labelledby="v-pills-1-tab">
                        <%--                        <span class="icon mb-3 d-block flaticon-ideas"></span>--%>
                        <h2 class="mb-4">Academic Honour Code</h2>
                        <p>
                            A student may appeal a decision regarding an Honor Code violation within 72 hours of
                            receiving the committee’s written notification. Appeals must be in writing and provide the
                            basis for the appeal in accordance with the criteria outlined in the Academic Honor Code.
                            Appeals of decisions made by the course instructor are submitted to the department head for
                            final review. Appeals of decisions made by a department head are submitted to the Academic
                            Standards Committee for final review. Appeals of decisions made by Academic Standards
                            Committee or a subcommittee thereof are submitted to the Dean of Faculty of the University
                            for final review.
                        </p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
                        <span class="icon mb-3 d-block flaticon-flasks"></span>
                        <h2 class="mb-4">Academic Policies</h2>
                        <p>Requests for exceptions to University academic policies may be made in writing on the
                            Academic Standards Petition form, available at the Enrollment Center in the basement of the
                            Dreier Building. The petition is submitted to the Registrar in the Enrollment Center and is
                            reviewed by the Academic Standards Review Board, which usually meets weekly.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
                        <span class="icon mb-3 d-block flaticon-analysis"></span>
                        <h2 class="mb-4">Campus Safety Violations</h2>
                        <p>If you wish to appeal fines assessed for any violation, you must file a written appeal within
                            seven days of issuance of the fine. Written appeals may be brought or mailed to Campus
                            Safety, Verrill Hall, Room 43, telephone 641-472-1143.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-4-tab">
                        <span class="icon mb-3 d-block flaticon-web-design"></span>
                        <h2 class="mb-4">Computer and Network Issues</h2>
                        <p>If you wish to appeal a decision to restrict or suspend your computer or network usage, you
                            may file a petition for reinstatement of computing privileges to the Associate Deans of
                            Students, 105 Dreier Building, studentlife@miu.edu, telephone 641-472-1225.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-4-tab">
                        <span class="icon mb-3 d-block flaticon-ux-design"></span>
                        <h2 class="mb-4">Equal Opportunity Policy</h2>
                        <p>Inquiries regarding the University’s equal opportunity policies and practices should be
                            directed to the General Counsel’s Office, Dreier Building, 2nd floor, croesler@miu.edu,
                            telephone 641-472-1175.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-5" role="tabpanel" aria-labelledby="v-pills-5-tab">
                        <span class="icon mb-3 d-block flaticon-innovation"></span>
                        <h2 class="mb-4">Financial Aid and Student Accounts</h2>
                        <p>Requests for exceptions to University financial policies may be made in writing on the
                            Finance Review Board Petition, which is also available at the Enrollment Center in the
                            basement of the Dreier Building. The petition is submitted to the Director of Student
                            Accounts in the Enrollment Center and is reviewed by the Finance Review Board, which usually
                            meets weekly.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-6" role="tabpanel" aria-labelledby="v-pills-6-tab">
                        <span class="icon mb-3 d-block flaticon-idea"></span>
                        <h2 class="mb-4">Grades</h2>
                        <p>Students who wish to appeal a grade should first discuss the matter with the course
                            instructor. If that does not settle the appeal satisfactorily, then the student has until 30
                            days after the grade was sent out by the Registrar to file a written appeal with the
                            department chair or, if the instructor was the department chair, with the Dean of Academic
                            Programs (for undergraduate students) or the Dean of the Graduate School (for graduate
                            students). Contact the Director of Student Success at parmstrong@miu.edu for assistance in
                            appealing a grade.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-7" role="tabpanel" aria-labelledby="v-pills-6-tab">
                        <span class="icon mb-3 d-block flaticon-idea"></span>
                        <h2 class="mb-4">Special Needs Accomodation</h2>
                        <p>Requests for academic accommodations should be directed to the Director of Student Success,
                            111 Dreier Building, parmstrong@miu.edu telephone 641-470-1384. Appeals of decisions
                            regarding academic accommodation shall be made to the Vice-President for Academic Affairs,
                            cpearson@miu.edu, whose decision shall be final. Individuals with disabilities who have
                            access problems in any campus building or other needs are encouraged to bring their concerns
                            to David Todt, Chief Administrative Officer, dtodt@miu.edu, telephone 641-472-1130.</p>
                    </div>

                    <div class="tab-pane fade py-5" id="v-pills-8" role="tabpanel" aria-labelledby="v-pills-6-tab">
                        <span class="icon mb-3 d-block flaticon-idea"></span>
                        <h2 class="mb-4">Students Life Issues</h2>
                        <p>Requests for exceptions to University policies regarding student life may be made in writing
                            to the Associate Deans of Students, 105 Dreier Building, studentlife@miu.edu, telephone
                            641-472-1225.

                            Appeals to decisions regarding student life shall be made to the Vice-President for Academic
                            Affairs, cpearson@miu.edu, whose decision shall be final.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--    <section class="ftco-section-2 img" style="background-image: url('./resources/images/bg_3.jpg');">--%>
<%--    	<div class="container">--%>
<%--    		<div class="row d-md-flex justify-content-end">--%>
<%--    			<div class="col-md-6">--%>
<%--    				<div class="row">--%>
<%--    					<div class="col-md-12">--%>
<%--    						<a href="#" class="services-wrap ftco-animate">--%>
<%--    							<div class="icon d-flex justify-content-center align-items-center">--%>
<%--    								<span class="ion-ios-arrow-back"></span>--%>
<%--    								<span class="ion-ios-arrow-forward"></span>--%>
<%--    							</div>--%>
<%--    							<h2>Market Research</h2>--%>
<%--    							<p>Even the all-powerful Pointing has no control about the blind.</p>--%>
<%--    						</a>--%>
<%--    						<a href="#" class="services-wrap ftco-animate">--%>
<%--    							<div class="icon d-flex justify-content-center align-items-center">--%>
<%--    								<span class="ion-ios-arrow-back"></span>--%>
<%--    								<span class="ion-ios-arrow-forward"></span>--%>
<%--    							</div>--%>
<%--    							<h2>Financial Services</h2>--%>
<%--    							<p>Even the all-powerful Pointing has no control about the blind.</p>--%>
<%--    						</a>--%>
<%--    						<a href="#" class="services-wrap ftco-animate">--%>
<%--    							<div class="icon d-flex justify-content-center align-items-center">--%>
<%--    								<span class="ion-ios-arrow-back"></span>--%>
<%--    								<span class="ion-ios-arrow-forward"></span>--%>
<%--    							</div>--%>
<%--    							<h2>Online Marketing</h2>--%>
<%--    							<p>Even the all-powerful Pointing has no control about the blind.</p>--%>
<%--    						</a>--%>
<%--    						<a href="#" class="services-wrap ftco-animate">--%>
<%--    							<div class="icon d-flex justify-content-center align-items-center">--%>
<%--    								<span class="ion-ios-arrow-back"></span>--%>
<%--    								<span class="ion-ios-arrow-forward"></span>--%>
<%--    							</div>--%>
<%--    							<h2>24/7 Help &amp; Support</h2>--%>
<%--    							<p>Even the all-powerful Pointing has no control about the blind.</p>--%>
<%--    						</a>--%>
<%--    					</div>--%>
<%--    				</div>--%>
<%--    			</div>--%>
<%--    		</div>--%>
<%--    	</div>--%>
<%--    </section>--%>

<%--    <section class="ftco-section ftco-project bg-light" id="projects-section">--%>
<%--    	<div class="container px-md-5">--%>
<%--    		<div class="row justify-content-center pb-5">--%>
<%--          <div class="col-md-12 heading-section text-center ftco-animate">--%>
<%--          	<span class="subheading">Accomplishments</span>--%>
<%--            <h2 class="mb-4">Our Projects</h2>--%>
<%--            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--    		<div class="row">--%>
<%--    			<div class="col-md-12 testimonial">--%>
<%--            <div class="carousel-project owl-carousel">--%>
<%--            	<div class="item">--%>
<%--            		<div class="project">--%>
<%--		    					<div class="img">--%>
<%--				    				<img src="resources/images/project-1.jpg" class="img-fluid" alt="Colorlib Template">--%>
<%--				    				<div class="text px-4">--%>
<%--				    					<h3><a href="#">Work Name</a></h3>--%>
<%--				    					<span>Web Design</span>--%>
<%--				    				</div>--%>
<%--			    				</div>--%>
<%--		    				</div>--%>
<%--            	</div>--%>
<%--            	<div class="item">--%>
<%--            		<div class="project">--%>
<%--		    					<div class="img">--%>
<%--				    				<img src="resources/images/project-2.jpg" class="img-fluid" alt="Colorlib Template">--%>
<%--				    				<div class="text px-4">--%>
<%--				    					<h3><a href="#">Work Name</a></h3>--%>
<%--				    					<span>Web Design</span>--%>
<%--				    				</div>--%>
<%--			    				</div>--%>
<%--		    				</div>--%>
<%--            	</div>--%>
<%--            	<div class="item">--%>
<%--            		<div class="project">--%>
<%--		    					<div class="img">--%>
<%--				    				<img src="resources/images/project-3.jpg" class="img-fluid" alt="Colorlib Template">--%>
<%--				    				<div class="text px-4">--%>
<%--				    					<h3><a href="#">Work Name</a></h3>--%>
<%--				    					<span>Web Design</span>--%>
<%--				    				</div>--%>
<%--			    				</div>--%>
<%--		    				</div>--%>
<%--            	</div>--%>
<%--            	<div class="item">--%>
<%--            		<div class="project">--%>
<%--		    					<div class="img">--%>
<%--				    				<img src="resources/images/project-4.jpg" class="img-fluid" alt="Colorlib Template">--%>
<%--				    				<div class="text px-4">--%>
<%--				    					<h3><a href="#">Work Name</a></h3>--%>
<%--				    					<span>Web Design</span>--%>
<%--				    				</div>--%>
<%--			    				</div>--%>
<%--		    				</div>--%>
<%--            	</div>--%>
<%--            	<div class="item">--%>
<%--            		<div class="project">--%>
<%--		    					<div class="img">--%>
<%--				    				<img src="resources/images/project-5.jpg" class="img-fluid" alt="Colorlib Template">--%>
<%--				    				<div class="text px-4">--%>
<%--				    					<h3><a href="#">Work Name</a></h3>--%>
<%--				    					<span>Web Design</span>--%>
<%--				    				</div>--%>
<%--			    				</div>--%>
<%--		    				</div>--%>
<%--            	</div>--%>
<%--            	<div class="item">--%>
<%--            		<div class="project">--%>
<%--		    					<div class="img">--%>
<%--				    				<img src="resources/images/project-6.jpg" class="img-fluid" alt="Colorlib Template">--%>
<%--				    				<div class="text px-4">--%>
<%--				    					<h3><a href="#">Work Name</a></h3>--%>
<%--				    					<span>Web Design</span>--%>
<%--				    				</div>--%>
<%--			    				</div>--%>
<%--		    				</div>--%>
<%--            	</div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--    		</div>--%>
<%--    	</div>--%>
<%--    </section>--%>


<section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb" id="about-section">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-6 col-lg-5 d-flex">
                <div class="img d-flex align-self-stretch align-items-center"
                     style="background-image:url('./resources/images/about.jpg');">
                </div>
            </div>
            <div class="col-md-6 col-lg-7 pl-lg-5 py-5">
                <div class="py-md-5">
                    <div class="row justify-content-start pb-3">
                        <div class="col-md-12 heading-section ftco-animate">
                            <span class="subheading">Welcome to Issue Tracer</span>
                            <h2 class="mb-4" style="font-size: 34px; text-transform: capitalize;">We Are Online
                                </h2>
                            <p>The Associate Dean of Students supports the intellectual, emotional and general well
                                being of all students. He serves as a point of information and advocate for students’
                                needs. The Associate Dean is also responsible for upholding student conduct to create an
                                optimal living and learning environment for students.</p><p>

                                He is the first responder in crisis and the contact person for sexual harassment
                                complaints. He is trained on Title IX Policies and Investigation Procedures, and
                                Resources for Support. He is a member of the University Prevention Team training
                                students, staff and faculty on Mentors in Violence Prevention and How to Be an Active
                                Bystander.</p>
                        </div>
                    </div>
                    <div class="counter-wrap ftco-animate d-flex mt-md-3">
                        <div class="text p-4 bg-primary">
                            <p class="mb-0">
                                <span class="number" data-number="50">0</span>
                                <span>Years of business</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<section class="ftco-section">--%>
<%--    <div class="container">--%>
<%--        <div class="row justify-content-center pb-5">--%>
<%--            <div class="col-md-6 heading-section text-center ftco-animate">--%>
<%--                <span class="subheading">About Us</span>--%>
<%--                <h2 class="mb-4">Our Staff</h2>--%>
<%--                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-6 col-lg-3 ftco-animate">--%>
<%--                <div class="staff">--%>
<%--                    <div class="img-wrap d-flex align-items-stretch">--%>
<%--                        <div class="img align-self-stretch"--%>
<%--                             style="background-image: url('./resources/images/staff-1.jpg');"></div>--%>
<%--                    </div>--%>
<%--                    <div class="text d-flex align-items-center pt-3 text-center">--%>
<%--                        <div>--%>
<%--                            <h3 class="mb-2">Lloyd Wilson</h3>--%>
<%--                            <span class="position mb-4">CEO, Founder</span>--%>
<%--                            <div class="faded">--%>
<%--                                <ul class="ftco-social text-center">--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-3 ftco-animate">--%>
<%--                <div class="staff">--%>
<%--                    <div class="img-wrap d-flex align-items-stretch">--%>
<%--                        <div class="img align-self-stretch"--%>
<%--                             style="background-image: url('./resources/images/staff-2.jpg);"></div>--%>
<%--                    </div>--%>
<%--                    <div class="text d-flex align-items-center pt-3 text-center">--%>
<%--                        <div>--%>
<%--                            <h3 class="mb-2">Rachel Parker</h3>--%>
<%--                            <span class="position mb-4">Web Designer</span>--%>
<%--                            <div class="faded">--%>
<%--                                <ul class="ftco-social text-center">--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-3 ftco-animate">--%>
<%--                <div class="staff">--%>
<%--                    <div class="img-wrap d-flex align-items-stretch">--%>
<%--                        <div class="img align-self-stretch"--%>
<%--                             style="background-image: url('./resources/images/staff-3.jpg');"></div>--%>
<%--                    </div>--%>
<%--                    <div class="text d-flex align-items-center pt-3 text-center">--%>
<%--                        <div>--%>
<%--                            <h3 class="mb-2">Ian Smith</h3>--%>
<%--                            <span class="position mb-4">Web Developer</span>--%>
<%--                            <div class="faded">--%>
<%--                                <ul class="ftco-social text-center">--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-3 ftco-animate">--%>
<%--                <div class="staff">--%>
<%--                    <div class="img-wrap d-flex align-items-stretch">--%>
<%--                        <div class="img align-self-stretch"--%>
<%--                             style="background-image: url('./resources/images/staff-4.jpg');"></div>--%>
<%--                    </div>--%>
<%--                    <div class="text d-flex align-items-center pt-3 text-center">--%>
<%--                        <div>--%>
<%--                            <h3 class="mb-2">Alicia Henderson</h3>--%>
<%--                            <span class="position mb-4">Graphic Designer</span>--%>
<%--                            <div class="faded">--%>
<%--                                <ul class="ftco-social text-center">--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>--%>
<%--                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--		<section class="ftco-section testimony-section" id="testimony-section">--%>
<%--      <div class="container">--%>
<%--        <div class="row justify-content-center pb-3">--%>
<%--          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">--%>
<%--            <h2 class="mb-4">Happy Clients</h2>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="row ftco-animate justify-content-center">--%>
<%--          <div class="col-md-12">--%>
<%--            <div class="carousel-testimony owl-carousel ftco-owl">--%>
<%--              <div class="item">--%>
<%--                <div class="testimony-wrap text-center py-4 pb-5">--%>
<%--                  <div class="user-img" style="background-image: url('./resources/images/person_1.jpg')">--%>
<%--                    <span class="quote d-flex align-items-center justify-content-center">--%>
<%--                      <i class="icon-quote-left"></i>--%>
<%--                    </span>--%>
<%--                  </div>--%>
<%--                  <div class="text px-4 pb-5">--%>
<%--                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>--%>
<%--                    <p class="name">John Fox</p>--%>
<%--                    <span class="position">Businessman</span>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="item">--%>
<%--                <div class="testimony-wrap text-center py-4 pb-5">--%>
<%--                  <div class="user-img" style="background-image: url('./resources/images/person_2.jpg')">--%>
<%--                    <span class="quote d-flex align-items-center justify-content-center">--%>
<%--                      <i class="icon-quote-left"></i>--%>
<%--                    </span>--%>
<%--                  </div>--%>
<%--                  <div class="text px-4 pb-5">--%>
<%--                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>--%>
<%--                    <p class="name">John Fox</p>--%>
<%--                    <span class="position">Businessman</span>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="item">--%>
<%--                <div class="testimony-wrap text-center py-4 pb-5">--%>
<%--                  <div class="user-img" style="background-image: url('./resources/images/person_3.jpg')">--%>
<%--                    <span class="quote d-flex align-items-center justify-content-center">--%>
<%--                      <i class="icon-quote-left"></i>--%>
<%--                    </span>--%>
<%--                  </div>--%>
<%--                  <div class="text px-4 pb-5">--%>
<%--                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>--%>
<%--                    <p class="name">John Fox</p>--%>
<%--                    <span class="position">Businessman</span>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="item">--%>
<%--                <div class="testimony-wrap text-center py-4 pb-5">--%>
<%--                  <div class="user-img" style="background-image: url('./resources/images/person_4.jpg')">--%>
<%--                    <span class="quote d-flex align-items-center justify-content-center">--%>
<%--                      <i class="icon-quote-left"></i>--%>
<%--                    </span>--%>
<%--                  </div>--%>
<%--                  <div class="text px-4 pb-5">--%>
<%--                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>--%>
<%--                    <p class="name">John Fox</p>--%>
<%--                    <span class="position">Businessman</span>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="item">--%>
<%--                <div class="testimony-wrap text-center py-4 pb-5">--%>
<%--                  <div class="user-img" style="background-image: url('./resources/images/person_3.jpg')">--%>
<%--                    <span class="quote d-flex align-items-center justify-content-center">--%>
<%--                      <i class="icon-quote-left"></i>--%>
<%--                    </span>--%>
<%--                  </div>--%>
<%--                  <div class="text px-4 pb-5">--%>
<%--                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>--%>
<%--                    <p class="name">John Fox</p>--%>
<%--                    <span class="position">Businessman</span>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </section>--%>

<%--<section class="ftco-section bg-light" id="blog-section">--%>
<%--    <div class="container">--%>
<%--        <div class="row justify-content-center mb-5 pb-5">--%>
<%--            <div class="col-md-7 heading-section text-center ftco-animate">--%>
<%--                <span class="subheading">Blog</span>--%>
<%--                <h2 class="mb-4">Our Blog</h2>--%>
<%--                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row d-flex">--%>
<%--            <div class="col-md-4 d-flex ftco-animate">--%>
<%--                <div class="blog-entry justify-content-end">--%>
<%--                    <a href="single.html" class="block-20"--%>
<%--                       style="background-image: url('resources/images/image_1.jpg');">--%>
<%--                    </a>--%>
<%--                    <div class="text mt-3 float-right d-block">--%>
<%--                        <div class="d-flex align-items-center pt-2 mb-4 topp">--%>
<%--                            <div class="one mr-2">--%>
<%--                                <span class="day">12</span>--%>
<%--                            </div>--%>
<%--                            <div class="two">--%>
<%--                                <span class="yr">2019</span>--%>
<%--                                <span class="mos">March</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a>--%>
<%--                        </h3>--%>
<%--                        <p>A small river named Duden flows by their place and supplies it with the necessary--%>
<%--                            regelialia.</p>--%>
<%--                        <div class="d-flex align-items-center mt-4 meta">--%>
<%--                            <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span--%>
<%--                                    class="ion-ios-arrow-round-forward"></span></a></p>--%>
<%--                            <p class="ml-auto mb-0">--%>
<%--                                <a href="#" class="mr-2">Admin</a>--%>
<%--                                <a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 d-flex ftco-animate">--%>
<%--                <div class="blog-entry justify-content-end">--%>
<%--                    <a href="single.html" class="block-20"--%>
<%--                       style="background-image: url('resources/images/image_2.jpg');">--%>
<%--                    </a>--%>
<%--                    <div class="text mt-3 float-right d-block">--%>
<%--                        <div class="d-flex align-items-center pt-2 mb-4 topp">--%>
<%--                            <div class="one mr-2">--%>
<%--                                <span class="day">10</span>--%>
<%--                            </div>--%>
<%--                            <div class="two">--%>
<%--                                <span class="yr">2019</span>--%>
<%--                                <span class="mos">March</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a>--%>
<%--                        </h3>--%>
<%--                        <p>A small river named Duden flows by their place and supplies it with the necessary--%>
<%--                            regelialia.</p>--%>
<%--                        <div class="d-flex align-items-center mt-4 meta">--%>
<%--                            <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span--%>
<%--                                    class="ion-ios-arrow-round-forward"></span></a></p>--%>
<%--                            <p class="ml-auto mb-0">--%>
<%--                                <a href="#" class="mr-2">Admin</a>--%>
<%--                                <a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 d-flex ftco-animate">--%>
<%--                <div class="blog-entry">--%>
<%--                    <a href="single.html" class="block-20"--%>
<%--                       style="background-image: url('resources/images/image_3.jpg');">--%>
<%--                    </a>--%>
<%--                    <div class="text mt-3 float-right d-block">--%>
<%--                        <div class="d-flex align-items-center pt-2 mb-4 topp">--%>
<%--                            <div class="one mr-2">--%>
<%--                                <span class="day">05</span>--%>
<%--                            </div>--%>
<%--                            <div class="two">--%>
<%--                                <span class="yr">2019</span>--%>
<%--                                <span class="mos">March</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a>--%>
<%--                        </h3>--%>
<%--                        <p>A small river named Duden flows by their place and supplies it with the necessary--%>
<%--                            regelialia.</p>--%>
<%--                        <div class="d-flex align-items-center mt-4 meta">--%>
<%--                            <p class="mb-0"><a href="#" class="btn btn-primary">Read More <span--%>
<%--                                    class="ion-ios-arrow-round-forward"></span></a></p>--%>
<%--                            <p class="ml-auto mb-0">--%>
<%--                                <a href="#" class="mr-2">Admin</a>--%>
<%--                                <a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Contact</span>
                <h2 class="mb-4">Contact Us</h2>
<%--                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>--%>
            </div>
        </div>
        <div class="row d-flex contact-info mb-5">
            <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                <div class="align-self-stretch box p-4 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="icon-map-signs"></span>
                    </div>
                    <h3 class="mb-4">Address</h3>
                    <p>198 Fake 21th Street, Suite 721 Fake York FY 10016</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                <div class="align-self-stretch box p-4 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="icon-phone2"></span>
                    </div>
                    <h3 class="mb-4">Contact Number</h3>
                    <p><a href="tel://1234567920">+ 1235 2355 98</a></p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                <div class="align-self-stretch box p-4 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="icon-paper-plane"></span>
                    </div>
                    <h3 class="mb-4">Email Address</h3>
                    <p><a href="mailto:info@yoursite.com">info@issuetracer.com</a></p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 d-flex ftco-animate">
                <div class="align-self-stretch box p-4 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="icon-globe"></span>
                    </div>
                    <h3 class="mb-4">Website</h3>
                    <p><a href="#">issuetracer.com</a></p>
                </div>
            </div>
        </div>
        <div class="row no-gutters block-9">
            <div class="col-md-6 order-md-last d-flex">
                <form action="#" class="bg-light p-5 contact-form">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Your Name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Your Email">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Subject">
                    </div>
                    <div class="form-group">
                        <textarea name="" id="" cols="30" rows="7" class="form-control"
                                  placeholder="Message"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
                    </div>
                </form>

            </div>

            <div class="col-md-6 d-flex">
                <div id="map" class="bg-white"></div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="partials/footer.jsp"/>

