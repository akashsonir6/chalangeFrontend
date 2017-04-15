<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <center><h3 style="color:white">Thank You For Order</h3></center>
	  
  </div>
  </div>
</nav>
<h4> Your order has been received and is now being processed. Your order details are show below for your reference:</h4>
 <h2>Your order details</h2>           
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Product</th>
        <th>Quantity</th>
        <th>price</th>
        
      </tr>
    </thead>
    <tbody>
   
      <tr>
    
       <td>${c1.getProduct().getName()}</td>
        <td>${c1.getproduct.getDes()}</td>
        <td>${c1.getproduct.getPrice()}</td>
      </tr>
    
    </tbody>
</body>
</html>