
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<%@ include file="nav.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
<style>
 button[type=submit]{
  background-color:#c6ffb3;
  color:black;
  
  
  }
  button[type=submit]:hover {
    background-color: #8cff66;
	}
  button[type=cancel]{
  background-color:#ffcccc;
  }
  button[type=cancel]:hover {
    background-color: #ff6666;
	}
	
	a:link {
    color: green;
}
body{
background-color:#F7F7D9;
}
</style>
</head>
<body>

<div class="container">
<form:form action="" method="post" commandName="user">
<h2>Add new User</h2><br>
<label for="id">User Id</label>
      <form:input type="text" path="id" class="form-control" placeholder="Enter User Id"/>
    
	
        <label for="name">User name</label>
      <form:input type="text" path="name" class="form-control" placeholder="Enter User name"/>
 
	
        <label for="cat">User add</label>
      <form:input type="text" class="form-control" path="cat"  placeholder="Enter User address"/><br>
      
      <label for="cat">User phone_no</label>
      <form:input type="text" class="form-control" path="cat"  placeholder="Enter User Phone No"/><br>
      
      <label for="cat">User phone_no</label>
      <form:input type="text" class="form-control" path="cat"  placeholder="Enter User Email_Id"/><br>
      
      <label for="cat">User phone_no</label>
      <form:input type="text" class="form-control" path="cat"  placeholder="Enter User Password"/><br>
      


	  <input type="submit" class="btn btn-default" value="Submit" />
	<input type="reset" class="btn btn-default" value="Reset">



</form:form>
</div>

</body>
</html>