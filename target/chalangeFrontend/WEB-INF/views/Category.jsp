
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<%@ include file="nav.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<style>
 



tr:nth-child(even) {
    background-color: pink;
    }
    
   
    

 

</style>
</head>
<body>

<div class="container">
<form:form action="categoryRes" method="post" commandName="category">
 <legend><center><h2><b><em>Add New Category</em></b></h2></center></legend><br>
 <label for="name">Category name</label>
        <form:input type="hidden" path="id" class="form-control" placeholder="Enter category id"/>
        

       <label for="name">Category name</label>
        <form:input type="text" path="name" class="form-control" placeholder="Enter category name"/>
        
 
	
        <label for="cat">Category Discription</label>
      <form:input type="text" class="form-control" path="cat"  placeholder="Enter category Discription"/><br>


	 <center>
	  <button type="submit" class="btn btn-default">Save </button>
	<button type="cancel" class="btn btn-default">Cancel</button>
    </center>



</form:form>
   <legend><center><h2><b><em>List Of Categorys</em></b></h2></center></legend><br>     
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Category Id</th>
        <th>Category Name</th>
        <th>Category Discription</th>
        <th><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit   <i class="fa fa-trash" aria-hidden="true">Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${categorise}" var="cat">
      <tr>
        <td>${cat.getId()}</td>
        <td>${cat.getName()}</td>
        <td>${cat.getCat()}</td>
        <td><a href="<c:url value='/catEdit/${cat.getId()}'/>"class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</a>/<a href="<c:url value='/cartDelete/${cat.getId()}'/>" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a>
        </td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>