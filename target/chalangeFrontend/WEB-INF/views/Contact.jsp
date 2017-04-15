<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact page</title>
</head>
<body>
<%@ include file="nav.jsp"%>
<center><h1 style="font-size:500%;"><c style="color: #800000"> E<c style="color:#FF6A33">shop</c></h1></center>
 <marquee><p style="color:rgb(224,167,59)"><b><em> HEAD BRANCH </b> BANGALORE  PIN CODE-800001  PH-0612-235588  MO-8540000440</em></marquee>
 <form action="#" method="get">
  <fieldset>
    <legend>Contact Us</legend><br>
First name 
<input type="text" name ="First name"  placeholder="Enter first name"><br><br>
Last name 
<input type="text"name="Last name" placeholder="Enter Last name"><br><br>
Mobile no
<input type="tel" name="Mobile_no" placeholder="Enter mobile number"><br><br>
<div class="container">
    <div class="form-group">
      <label for="comment">Comment</label>
      <textarea class="form-control" rows="6" cols="22" id="comment"></textarea><br>
    </div>
</div>
   <br> <input type="submit" value="Submit">
	<input type="reset" value="Reset">
  </fieldset>
</form>

</body>
</html>