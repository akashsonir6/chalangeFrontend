<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
input[type=text] {
	width: 130px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}
</style>
</head>
<body>
	<link href="https://fonts.googleapis.com/css?family=Roboto"
		rel="stylesheet">
	<%@ include file="nav.jsp"%><br>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img
					src="<c:url value='/resource/images/4500x900._UX1500_SX1500_.jpg'/>"
					alt="Image" style="width: 1550px; height: 300px">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img
					src="<c:url value='/resource/images/IN-PR-GW-PC-launch-PV-NYP-4500x900._UX1500_SX1500_.jpg'/>"
					alt="Image" style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img
					src="<c:url value='/resource/images/GW-bunk_4500x900_computer-acessories._UX1500_SX1500_.jpg'/>"
					alt="Image" style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img
					src="<c:url value='/resource/images/1028774_GWHERO_4500X900_GPS._UX1500_SX1500_.jpg'/>"
					alt="Image" style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>

	</div>
	</div>
	<br>




	<div class="cantainer-fluid">
		<div class="col-md-4">
			<CENTER>
				<img src="<c:url value='/resource/images/se-fb1.jpg'/>"
					class="img-circle" alt="Cinque Terre" width="304" height="236">
				<div class="caption">
					<p>
						<b>Apple Iphone 6</b>
					</p>
			</CENTER>
		</div>
	</div>
	<div class="col-md-4">
		<CENTER>
			<img
				src="<c:url value='/resource/images/laptop-wallpapers-64518.jpg'/>"
				class="img-circle" alt="Cinque Terre" width="304" height="236">
			<div class="caption">
				<p>
					<b>Sony Vaio</b>
				</p>
		</CENTER>
	</div>
	</div>
	<div class="col-md-4">
		<CENTER>
			<img src="<c:url value='/resource/images/maxresdefault.jpg'/>"
				class="img-circle" alt="Cinque Terre" width="304" height="236">
			<div class="caption">
				<p>
					<b>Sony camera</b>
				</p>
		</CENTER>
	</div>
	</div>
	</div>





	<!-----login page------>

	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					${msg}
					<c:if test="${logout!=null}">${logout} 
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name== null}">
					<a href="<c:url value="/j_spring_security_check" var="log" />"></a></c:if>
					<form:form action="${log}" method="post">
					<c:if test="${not empty error}">${error }
					</c:if>

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">
								<b>Sing Up</b>
							</h4>
							<div class="container">
								<img src="<c:url value='/resource/images/images.png'/>"
									alt="Avatar" class="avatar">

								<div class="form-group">
									<label class="control-label col-sm-2" for="email">User
										Id:</label>
									<div class="col-sm-4">
										<input type="email"  class="form-control"
											placeholder="Enter User ld" id="u_email" name="j_username" />
									</div>
								</div>
								<br>
								<br>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Password:</label>
									<div class="col-sm-4">
										<input type="password"  class="form-control"
											placeholder="Enter password" name="j_password"  />
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-6">
										<div class="checkbox">
											<label><input type="checkbox"> Remember me</label>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-4">
										<button type="submit" class="btn btn-default">Submit</button>
										<button type="cancel" class="btn btn-default">Reset</button>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								</center>
								<center>
									<a href="#" class="upper-links" type="link" data-toggle="modal"
										data-target="#myModal3">New User/LogIn</a>
								</center>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<!----Singup page----->

		<div class="container">
			<!-- Modal -->
			<div class="modal fade" id="myModal3" role="dialog">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal1">&times;</button>
									<c:if test="${pageContext.request.userPrincipal.name== null}">
							<c:url value="/userRes" var="add" /></c:if>
							<form:form action="${add}" method="post" commandName="user">
								<legend>
									<a href="#" class="upper-links" type="link" data-toggle="modal"
										data-target="#myModal3"><h3>Log In/Already have an
											account? Singup</h3></a>
								</legend>
								<div>
									<center>
										<img src="<c:url value='/resource/images/edit-user-xxl.png'/>"
											alt="Avatar" class="avatar">
									</center>
								</div>
								<br>
								<div class="form-group">
									<div class="col-xs-3">
										<br> <label for="F name">First name</label>
										<form:input type="First name" path="u_fname"
											class="form-control" id="name" placeholder="Enter First name" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label for="l name">Last name</label>
										<form:input type="last name" path="u_lname"
											class="form-control" id="name" placeholder="Enter Last name" />
									</div>
								</div>
						</div>
						<div class="container">
							<div class="form-group">
								<div class="col-xs-4">
									<br> <label for="">Gender</label><br> <label
										class="radio-inline"> <form:radiobutton
											path="u_gender" name="optradio" value="Male" />Male
									</label> <label class="radio-inline"> <form:radiobutton
											path="u_gender" name="optradio" value="Female" />Female
									</label><br>
									</div>
									</div>
									</div>
									<br>
<!-- 									<div class="container"> -->
<!-- 										<div class="form-group"> -->
<!-- 											<div class="col-xs-4"> -->
<!-- 												<label for="l name">Address</label> -->
<%-- 												<form:input type="Address" path="u_add" class="form-control" --%>
<%-- 													id="add" placeholder="Enter Address" /> --%>
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
									<br>

									<div class="container">
										<div class="form-group">
											<div class="col-xs-4">
												<label for="phone">Phone No</label>
												<form:input type="phone" path="u_phno" class="form-control"
													id="phone" placeholder="Enter Phone" />
											</div>
										</div>
									</div>
									<br>

									<div class="container">
										<div class="form-group">
											<div class="col-xs-4">
												<label for="email">Email:</label>
												<form:input type="email" path="u_email" class="form-control"
													id="email" placeholder="Enter email" />
											</div>
										</div>
									</div>
										<div class="container">
										<div class="form-group">
											<div class="col-xs-4">
												<label for="pwd">Password:</label>
												<form:input type="password" path="u_psw"
													class="form-control" id="pwd" placeholder="Enter password" />
												<br> <label for="pwd">Re Password:</label> <input
													type="password" class="form-control" id="pwd" name="hi"
													placeholder="Enter Re password"><br>
									</div>
									</div>
									</div>
									<fieldset>
                                    <legend><em></>Address<em></legend>
                                     <div class="container">
                                       <div class="row"> 
                                        <div class="col-xs-2">
                                         <div class="form-group">
									      <div class="col-xs-12">
										   <label for="city">House No</label>
										    <form:input type="text" path="billingAddress.houseno"
											class="form-control"  placeholder="Enter House_no" />
									      </div>
                                         </div>
                                         </div>
                                         
                                         <div class="col-xs-2">
                                         <div class="form-group">
									<div class="col-xs-12">
										<label for="city">City name</label>
										<form:input type="text" path="billingAddress.city"
											class="form-control"  placeholder="Enter your city name" />
									</div>
								</div> 
                                         </div>
                                         </div>
                                          <div class="row">
                                          <div class="col-xs-2">
                                            <div class="form-group">
									<div class="col-xs-12">
										<label for="city">Country</label>
										<form:input type="text" path="billingAddress.country"
											class="form-control"  placeholder="Enter your country name" />
									</div>
								</div>          
                                          </div>
                                          <div class="col-xs-2">
                                            <div class="form-group">
								          	<div class="col-xs-12">
										<label for="Pin">Country</label>
										<form:input type="text" path="billingAddress.pincode"
											class="form-control"  placeholder="Enter area pincode" />
									</div>
								</div>
                                          </div>
                                          </div>
                                          
                                     </div>
	                               </fieldset> 
                                    
															
								
								
								
								
												<div class="checkbox">
													<label><input type="checkbox"> Remember me</label>
												</div>
												<div>
												 <center>
	  <button type="submit" class="btn btn-default">Submit </button>
	<button type="cancel" class="btn btn-default">Cancel</button>
    </center>
												
											</div>
										</div>
									</div>
									</form:form>

								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- footer -->
<!-- 	<div class="footer"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="footer-top"> -->
<!-- 				<div class="col-md-3 location"> -->
<!-- 					<h4>Local Head Office</h4> -->
<!-- 					<p>RAJAJEE NAGAR 4th BLOCK</p> -->
<!-- 					<p>Bangalore, Karnataka, India</p> -->
<!-- 					<h4>HEAD OFFICE</h4> -->
<!-- 					<p>Eshop Head Office</p> -->
<!-- 					<p>Patna, Bring Road</p>  -->
<!-- 					<p>Patna - 800001 </p> -->
<!-- 					<p>phone No:- +91-7026350283</p> -->
<!-- 					<p>E-Mail ID:- akashkumarsonir6@gmail.com</p>  -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3 customer"> -->
					
<!-- 					<h4>Our Contact</h4> -->
<!-- 					<h6>+91-9148885398</h6> -->
<!-- 					<h4>contact us</h4> -->
<!-- 					<h6>contact us page.</h6> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3 social"> -->
<!-- 					<h4>get social</h4> -->
<!-- 					<div class="face-b"> -->
<!-- 						<img src="" title="name" /> -->
<!-- 						<a href="facebook.com"><i class="fb"> </i></a> -->
<!-- 					</div> -->
<!-- 					<div class="twet">		 -->
<!-- 						<img src="" title="name" /> -->
<!-- 							<a href="twitter.com"><i class="twt"> </i></a> -->
<!-- 					</div>	 -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3 sign"> -->
<!-- 					<h4>sign up for news letter</h4>	 -->
<!-- 						<form> -->
<!-- 						<input type="text" class="text" value="YOUR EMAIL" -->
<!-- 							onfocus="this.value = '';" -->
<!-- 							onblur="if (this.value == '') {this.value = 'YOUR EMAIL ';}"> -->
<!-- 						</form> -->
<!-- 				</div> -->
<!-- 					<div class="clearfix"> </div> -->
<!-- 			</div> -->
<!-- 			<div class="footer-bottom"> -->
<!-- 				<p>Designed By Akash soni </a> -->
<!-- 				</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<!--  /footer---> -->
				
</body>
</html>



