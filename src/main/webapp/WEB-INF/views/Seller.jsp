<%@ include file="nav.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>


tr:nth-child(even) {
    background-color: pink;
    }
    
   
    
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Form</title>
</head>
<body>
<div class="container">
<c:url value="/sellerRes" var="re"/>
<form:form action="${re}" method="post" commandName="seller">
  <legend><center><h2><b><em>Add New Seller</em></b></h2></center></legend><br>
  
   
        <label for="id"></label>
      <form:input type="hidden" path="Id"  class="form-control" placeholder="Enter seller Id"/><br>
      
      <label for="id">Seller Name</label>
      <form:input type="text" path="Name" class="form-control" placeholder="Enter seller name"/><br>
      
      <label for="id">Seller Address</label>
      <form:input type="text" path="Add" class="form-control" placeholder="Enter seller Address"/><br>
      
      <label for="id">Seller Phone</label>
      <form:input type="text" path="Phone" class="form-control" placeholder="Enter seller Phone"/><br>
	
	<center>
	  <button type="submit" class="btn btn-default">Save </button>
	<button type="cancel" class="btn btn-default">Cancel</button>
    </center>
  </form:form><br>
   <legend><center><h2><b><em>List Of Sellers</em></b></h2></center></legend><br>

   <table class="table table-bordered">
    <thead>
      <tr>
        <th>Seller Id</th>
        <th>Name</th>
        <th>Address</th>
        <th>phone</th>
        <th><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit   <i class="fa fa-trash" aria-hidden="true">Delete</i>></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${sellers}" var="sell">
      <tr>
        <td>${sell.getId()}</td>
        <td>${sell.getName()}</td>
         <td>${sell.getAdd()}</td>
          <td>${sell.getPhone()}</td>
        <td><a href="<c:url value='/sellEdit/${sell.getId()}'/>"class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</a>/<a href="<c:url value='/sellDelete/${sell.getId()}'/>" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a>
        </td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>