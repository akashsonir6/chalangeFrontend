<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="nav.jsp"%>
  <br><br>
  <center>${msg}</center>

<div class="container">
 <legend><center><h2><b><em>Your favorite choice list</em></b></h2></center></legend><br>
  <br>
  
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Pro_img</th>
        <th>Name</th>
        <th>price</th>
        <th>Des</th>
        <th><span class="glyphicons glyphicons-shopping-cart">rc</span><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit   <i class="fa fa-trash" aria-hidden="true">Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${cartItems}" var="pro">
      <tr>
        <td><img src="<c:url value='/resource/images/${pro.getProduct().getP_id()}.jpg'/>"></td>
        <td>${pro.getProduct().getName()}</td>
        <td>${pro.getProduct().getPrice()}</td>
        <td>${pro.getProduct().getDes()}</td>
        <td><a href="<c:url value='/RemoveFromCart/${pro.getCartItem_Id()}'/>" 
        class="btn btn-danger"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Remove</a>/<a href="<c:url value='/order/${pro.getProduct().getP_id()}/${pro.getCartItem_Id()}'/>"class="btn btn-info"><i class="fa fa-trash" aria-hidden="true"></i> Buy now</a>
        </td>
      </tr>
      </c:forEach>
       
    </tbody>

  </table>
  <center><b><p style="color:green;"> Total price=${gtotal}</p></b></center><br>
<center> <a href="<c:url value='/RemoveallFromCart'/>" class="btn btn-danger">
<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Remove All</a>/<a href="<c:url value='/BuyallFromCart'/>" class="btn btn-info"><i class="fa fa-trash" aria-hidden="true"></i> Buy All Now</a>
  </center></div><br>

</body>
</html>