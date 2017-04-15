<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Single  view product</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<br><br>
<div class="container" >
  <div class="panel panel-default">
  <div class="col-sm-4">
   <a href="${img}/${pro.getP_id()}.jpg" class="img-responsive" style="width:600px;height:400px" >
    <img src="<c:url value='/resource/images/${pro.getP_id()}.jpg'/>" class="img-responsive" style="width:50%" >  
    </a>
    </div>
    <div class="col-sm-6"> 
     <center><div class="producttitle"><h2>${pro.getName()}</h2></center>
    <hr>
    <div class="pricetext">
    <center> <h2> Didcription</h2></center>
   <center> <div class="panel-body">${pro.getDes()}</div></center></div>
   <hr>
    <div class="col-sm-4">
    <div class="productprice pull-left"><h3>price:<i class="fa fa-inr" aria-hidden="true"></i> ${pro.getPrice()}</h3></div>
    </div>
    <div class="col-sm-4">
   <div class="productprice">
   <div class="pull-right">/
   <a href="<c:url value='/addtocart/${pro.getP_id()}'/>" class="btn btn-primary"><h3><i class="fa fa-cart-plus" aria-hidden="true"></i>
    Add to cart</h3></a>
    </div>
    </div>
    </div>
    
    <div class="col-sm-4">
    <div class="productprice">
   <div class="pull-right">
   <a href="#" class="btn btn-warning" role="button"><h3><i class="fa fa-audio-description" aria-hidden="true"></i>
    Bye</h3></a>
    </div>
    </div>
   
    </div>
    <hr>
</div>
</div>
</div>

</body>
</html>