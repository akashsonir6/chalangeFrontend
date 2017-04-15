
<%@ include file="nav.jsp"%><br>

<div class="col-md-12  col-sm-12  col-xs-8 "
	style="background: #fff; padding: 30px;">

	<div class="col-md-6 col-sm-6 col-xs-12">
		<h3 class="text-center">Billing Address</h3>

		<hr>
	
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" path="user.u_email" name="email" class="form-control input-sm"
					placeholder="Email id" disabled="true"/>
			</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="number" name="mono" path="user.u_phno" disabled="true"
					class="form-control input-sm" placeholder="Mobile no"/>
			</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="form-group">
				<form:input class="form-control" path="billingAddress.houseno" disabled="true"
					placeholder="House name and number"/>                                                
                                            
			</div>
		</div>

		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" name="country" disabled="true"
					class="form-control input-sm" placeholder="country" path="billingAddress.country" />
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" name="city" disabled="true"
					class="form-control input-sm" placeholder="city" path="billingAddress.city"/>
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" name="pincode" disabled="true"
					class="form-control input-sm" placeholder="pincode" path="billingAddress.pincode" />
			</div>
		</div>
		<input class="coupon_question" type="checkbox" name="coupon_question"
			value="1"> <span class="item-text">Check Shipping
			address</span>
	</div>


	<div class="col-md-6 shipping col-sm-6 col-xs-12">
		<h3 class="text-center">shipping Address</h3>

		<hr>
		<c:url value="/orderConform" var="a"/>
		<form:form action="${a}" method="post" commandName="shippingAddress">
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="first_name" id="first_name"
					class="form-control input-sm" placeholder="First Name" path="firstname"/>
			</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="last_name" id="last_name"
					class="form-control input-sm" placeholder="Last Name" path="lastname"/>
			</div>
		</div>

		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="first_name" id="first_name"
					class="form-control input-sm" placeholder="Email id" path="email"/>
			</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="Mobile_no" 
					class="form-control input-sm" placeholder="Mobile no" path="mono"/>
			</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="form-group">
				<form:input type="text" class="form-control" path="houseno"/>                                                
                                           
			</div>
		</div>

		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text"
					class="form-control input-sm" placeholder="country" path="country"/>
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" 
					class="form-control input-sm" placeholder="city" path="city"/>
			</div>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text"
					class="form-control input-sm" placeholder="pincode" path="pincode" />
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<input type="submit" class="btn btn-primary pull-right" value="Continue">
	</div>
    </form:form>
</div>



