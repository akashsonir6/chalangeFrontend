<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<style>
.styled-select {
   background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
   height: 29px;
   overflow: hidden;
   width: 240px;
}

.styled-select select {
   background: transparent;
   border: none;
   font-size: 14px;
   height: 29px;
   padding: 5px; /* If you add too much padding here, the options won't show in IE */
   width: 268px;
}

.styled-select.slate {
   background: url(http://i62.tinypic.com/2e3ybe1.jpg) no-repeat right center;
   height: 34px;
   width: 240px;
}

.styled-select.slate select {
   border: 1px solid #ccc;
   font-size: 16px;
   height: 34px;
   width: 268px;
}

/* -------------------- Rounded Corners */
.rounded {
   -webkit-border-radius: 20px;
   -moz-border-radius: 20px;
   border-radius: 20px;
}

.semi-square {
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
}

/* -------------------- Colors: Background */
.slate   { background-color: #ddd; }
.green   { background-color: #779126; }
.blue    { background-color: #3b8ec2; }
.yellow  { background-color: #eec111; }
.black   { background-color: #000; }

/* -------------------- Colors: Text */
.slate select   { color: #000; }
.green select   { color: #fff; }
.blue select    { color: #fff; }
.yellow select  { color: #000; }
.black select   { color: #fff; }


/* -------------------- Select Box Styles: danielneumann.com Method */
/* -------------------- Source: http://danielneumann.com/blog/how-to-style-dropdown-with-css-only/ */
#mainselection select {
   border: 0;
   color: #EEE;
   background: transparent;
   font-size: 20px;
   font-weight: bold;
   padding: 2px 10px;
   width: 378px;
   *width: 350px;
   *background: #58B14C;
   -webkit-appearance: none;
}

#mainselection {
   overflow:hidden;
   width:350px;
   -moz-border-radius: 9px 9px 9px 9px;
   -webkit-border-radius: 9px 9px 9px 9px;
   border-radius: 9px 9px 9px 9px;
   box-shadow: 1px 1px 11px #330033;
   background: #58B14C url("http://i62.tinypic.com/15xvbd5.png") no-repeat scroll 319px center;
}


/* -------------------- Select Box Styles: stackoverflow.com Method */
/* -------------------- Source: http://stackoverflow.com/a/5809186 */
select#soflow, select#soflow-color {
   -webkit-appearance: button;
   -webkit-border-radius: 2px;
   -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
   -webkit-padding-end: 20px;
   -webkit-padding-start: 2px;
   -webkit-user-select: none;
   background-image: url(http://i62.tinypic.com/15xvbd5.png), -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
   background-position: 97% center;
   background-repeat: no-repeat;
   border: 1px solid #AAA;
   color: #555;
   font-size: inherit;
   margin: 20px;
   overflow: hidden;
   padding: 5px 10px;
   text-overflow: ellipsis;
   white-space: nowrap;
   width: 300px;
}

select#soflow-color {
   color: #fff;
   background-image: url(http://i62.tinypic.com/15xvbd5.png), -webkit-linear-gradient(#779126, #779126 40%, #779126);
   background-color: #779126;
   -webkit-border-radius: 20px;
   -moz-border-radius: 20px;
   border-radius: 20px;
   padding-left: 15px;
}

tr:nth-child(even) {
    background-color: pink;
    }
    
    .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #ff1a1a;
}

.button1:hover {
    background-color: #ff4d4d;
    color: white;
}
    
   
    
</style>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container">
<c:url value='/productRes' var="prod"/>
<form:form action="${prod}"  commandName="product" enctype="multipart/form-data">

    <legend><center><h2><b><em>Add New Products</em></b></h2></center></legend><br>
  <br>
         <label for="product Id"></label>
      <form:input type="hidden" path="P_id" class="form-control" placeholder="Enter Product Id"/><br>
	
        <label>Product name</label>
        <form:input type="text" path="Name" class="form-control" placeholder="Enter Product name"/>
        <form:errors path="Name"/>
 
        <label >Product price</label>
      <form:input type="text" class="form-control" path="price"  placeholder="Enter Price"/>
      <form:errors path="price"/><br>
      
      <label>Product Quentity</label>
      <form:input type="text" path="Que" class="form-control" placeholder="Enter Quentity"/><br>
      
	 <label>Product Description</label>
      <form:input type="text" path="Des" class="form-control" placeholder="Enter Description"/>
      <form:errors path="Des"/><br>
      
      
<!--       <label for="category">Category</label> -->
<%--       <c:forEach var="c" items="${categorys}"> --%>
<%--       <form:radiobutton path="${category.id}" value="${c.getId()}" name="cattttt" />${c.getName()}                             --%>
<%--      </c:forEach> --%>
     
<!--      <div class="container1"> -->
					<label class="control-label col-sm-2" path="${category.id}"></label>
					<div class="col-sm-10">
						<form:select path="${category.id}" id="soflow-color">
							<option value="-1">Select Category</option>
							<c:forEach items="${categorys}" var="c">
								<option value="${c.getId()}">${c.getName()}</option>
							</c:forEach>
						</form:select>
					</div>
				
				
			
					<label class="control-label col-sm-2" path="${category.id}"></label>
					<div class="col-sm-10">
						<form:select path="${seller.id}" id="soflow-color">
							<option value="-1">Select Seller</option>
							<c:forEach items="${sellers}" var="s">
								<option value="${s.getId()}">${s.getName()}</option>
							</c:forEach>
						</form:select>
					</div>
			</div>
				
<!-- 				<lebel>Seller List</lebel> -->
<!-- 				<div class="Form-horizontal form-group" role="form" > -->
<!-- 				<div class="col-sm-10"> -->
<%-- 						<form:select id="basic" path="${category.id}" class="selectpicker show-tick from-control"> --%>
<!-- 							<option value="-1">Select category</option> -->
<%-- 							<c:forEach items="${categorys}" var="c"> --%>
<%-- 								<option value="${c.getId()}">${c.getName()}</option> --%>
<%-- 							</c:forEach> --%>
<%-- 						</form:select> --%>
<!-- 						</div> -->
<!-- 						</div> -->
				
  
     
<!--       <label for="seller">Seller</label> -->
<%--       <c:forEach var="s" items="${sellers}"> --%>
<%--       <form:radiobutton path="${seller.id}" value="${s.getId()}" name="supp"/>${s.getName()}</c:forEach> --%>
      <form:input class="button button1" path="pimg" type="file" name="image" value="upload file"/>
  
     
      <center>
	  <button type="submit" class="btn btn-default">Save </button>
	<button type="cancel" class="btn btn-default">Cancel</button>
    </center>


</form:form>
  <br><br>
  <legend><center><h2><b><em>List Of Products</em></b></h2></center></legend><br>     
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Image</th>
        <th>Pro Id</th>
        <th>Name</th>
        <th>price</th>
        <th>Que</th>
        <th>Des</th>
         <th><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit   <i class="fa fa-trash" aria-hidden="true">Delete</th>
        
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="pro">
      <tr>
        <td><img src="<c:url value='/resource/images/${pro.getP_id()}.jpg'/>"></td>
        <td>${pro.getP_id()}</td>
        <td>${pro.getName()}</td>
        <td>${pro.getPrice()}</td>
        <td>${pro.getQue()}</td>
        <td>${pro.getDes()}</td>
        <td><a href="<c:url value='/proEdit/${pro.getP_id()}'/>"class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</a>/<a href="<c:url value='/prosDelete/${pro.getP_id()}'/>" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> Delete</a>
        </td>
      </tr>
      </c:forEach>
    </tbody>
   
  </table>
  </div>
</body>
</html>