<html>
<head>
<style>
.btn-product{
	width: 100%;
}
</style>
</head>
<body>
<%@ include file="nav.jsp"%>
<br>
<div class="container">
   
    <div class="row">
   
    	<div class="col-md-12">
	 <c:forEach items="${products}" var="p">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">${p.getCategory().getName()}</span></h4>
					<img src="<c:url value='/resource/images/${p.getP_id()}.jpg'/>"/>
					<div class="caption">
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3>${p.getName()}</h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label>${p.getPrice()}</label></h3>
							</div>
						</div>
						<p>${p.getDes()}</p>
			``
						<div class="row">
							<div class="col-md-6">
								<a href="<c:url value="/viewapro/${p.getP_id()}"/>" class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span>view</a> 
							</div>
							<div class="col-md-6">
								<a href="<c:url value="/addtocart/${p.getP_id()}"/>" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Add TO Cart</a>
								</div>
						</div>

						
					</div>
				</div>
			</div>
       </c:forEach>
       </div>
       
          </div> 
   
 </div>
 </body>
 </html>           