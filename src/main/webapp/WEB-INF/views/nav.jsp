<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Wellcome to Eshop</title>
  <meta charset="utf-8">

<spring:url value="/resources/images" var="img"/> 
<spring:url value="/resources/css" var="css"/> 
<spring:url value="/resources/js" var="js"/> 
  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="/resource/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resource/css/font-awesome.css" />"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    
    
<%--     <link href="${css}/bootstrap.css" rel="stylesheet" />  --%>
    <script src="<c:url value="/resource/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
	<style>
body{
	background-color:#ffffe6;
	}
#flipkart-navbar {
    background-color: #00ffbf;
    color:white;
}
button[type=submit]{
  background-color:#c6ffb3;
  color:black;
  }
   button[type=submit]:hover {
    background-color: #8cff66;
	}
	button[type=cancel]{
	background-color:#ffcccc;
	color:;
	}
	button[type=cancel]:hover{
	background-color:red;
	}
.row1{
    padding-top: 10px;
}

.row2 {
    padding-bottom: 20px;
}

.flipkart-navbar-input {
    padding: 11px 16px;
    border-radius: 2px 0 0 2px;
    border: 0 none;
    outline: 0 none;
    font-size: 15px;
}

.flipkart-navbar-button {
    background-color: #ffe11b;
    border: 1px solid #ffe11b;
    border-radius: 0 2px 2px 0;
    color: #565656;
    padding: 10px 0;
    height: 43px;
    cursor: pointer;
}

.cart-button {
    background-color: #ff6633;
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .23), inset 1px 1px 0 0 hsla(0, 0%, 100%, .2);
    padding: 10px 0;
    text-align: center;
    height: 41px;
    border-radius: 2px;
    font-weight: 500;
    width: 120px;
    display: inline-block;
    color: #FFFFFF;
    text-decoration: none;
    color: inherit;
    border: none;
    outline: none;
}

.cart-button:hover{
    text-decoration: none;
    color: #cc3300;
    cursor: pointer;
}

.cart-svg {
    display: inline-block;
    width: 16px;
    height: 16px;
    vertical-align: middle;
    margin-right: 8px;
}

.item-number {
    border-radius: 3px;
    background-color: rgba(0, 0, 0, .1);
    height: 20px;
    padding: 3px 6px;
    font-weight: 500;
    display: inline-block;
    color: #fff;
    line-height: 12px;
    margin-left: 10px;
}

.upper-links {
    display: inline-block;
    padding: 0 11px;
    line-height: 23px;
    font-family: 'Roboto', sans-serif;
    letter-spacing: 0;
    color: inherit;
    border: none;
    outline: none;
    font-size: 13px;
}

.dropdown {
    position: relative;
    display: inline-block;
    margin-bottom: 0px;
}

.dropdown:hover {
    background-color: #fff;
}

.dropdown:hover .links {
    color: #000;
}



.links {
    color: black;
    text-decoration: none;
}

.links:hover {
    color: #fff;
    text-decoration: bold;
}

.profile-links {
    font-size: 12px;
    font-family: 'Roboto', sans-serif;
    border-bottom: 1px solid #e9e9e9;
    box-sizing: border-box;
    display: block;
    padding: 0 11px;
    line-height: 23px;
}

.profile-li{
    padding-top: 2px;
}



.menu{
    cursor: pointer;
}

@media screen and (min-width: 768px) {
    .largenav {
        display: block;
    }
    .smallnav{
        display: none;
    }
    .smallsearch{
        margin: 0px;
    }
}

/*Sidenav*/
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #fff;
    overflow-x: hidden;
    transition: 0.5s;
    box-shadow: 0 4px 8px -3px #555454;
    padding-top: 0px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
    color: #fff;        
}

@media screen and (max-height: 450px) {
  .sidenav a {font-size: 18px;}
}

.sidenav-heading{
    font-size: 36px;
    color: #fff;
}
/*carousel-inner*/
carousel-inner img {
      width: 100%;  Set width to 100% 
      margin: auto;
      min-height:250px;
a:link {
    color: green;
}

	  /* visited link */
a:visited {
    color: green;
}

/* mouse over link */
a:hover {
    color: red;
}

/* selected link */
a:active {
    color: yellow;
	}
</style>
</head>
<body>
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<div id="flipkart-navbar">
    <div class="container">
        <div class="row row1">
            <ul class="largenav pull-right">
				<li class="upper-links" class="active"><a href="<c:url value="/"/>"> <span class="glyphicon glyphicon-home"></span> <b>Home</b></a></li>
                <li class="upper-links"><a class="links" href=""><span class= "glyphicon glyphicon-road"></span> <b>Track Order</b></a></li>
                <li class="upper-links"><a class="links" href="<c:url value="/contact"/>"><span class="glyphicon glyphicon-earphone"></span> <b>24x7 Customer care</b></a></li>
                <li class="upper-links">
                    <a class="links" href="http://clashhacks.in/">
                        <svg class="" width="16px" height="12px" style="overflow: visible;">
                            <path d="M8.037 17.546c1.487 0 2.417-.93 2.417-2.417H5.62c0 1.486.93 2.415 2.417 2.415m5.315-6.463v-2.97h-.005c-.044-3.266-1.67-5.46-4.337-5.98v-.81C9.01.622 8.436.05 7.735.05 7.033.05 6.46.624 6.46 1.325v.808c-2.667.52-4.294 2.716-4.338 5.98h-.005v2.972l-1.843 1.42v1.376h14.92v-1.375l-1.842-1.42z" fill="#fff"></path>
                        </svg>
                    </a>
                </li>
                		<c:if test="${pageContext.request.userPrincipal.name== null}">
                <li class="upper-links" type="link"  data-toggle="modal" data-target="#myModal">
                <span class="glyphicon glyphicon-user"></span> <b>Log In</b></a></li>
              </c:if> 
              <c:if test="${pageContext.request.userPrincipal.name!= null}">
              <b> welcome ${pageContext.request.userPrincipal.name}</b> 
              		
                <li class="upper-links"><a class="links" data-toggle="modal1" data-target="#myModal1" href="<c:url value="/j_spring_security_logout"></c:url>">
                <span class="glyphicon glyphicon-log-out"></span><b>  Logout</b></a></li>
                </li></c:if>
            </ul>
        </div>
        <div class="row row2">
            <div class="col-sm-2">
                <a class="largenav" href="https://www.google.co.in"><img alt="brand" src="<c:url value='/resource/images/logo.png'/>" style="width:150px;height:30px;upper:50px;"></a> 
			</div>
			  <div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
                <div class="row">
                    <input class="flipkart-navbar-input col-xs-11" type="text" placeholder="Search for Products, Brands and more" name="">
                    <button class="flipkart-navbar-button col-xs-1">
                        <svg width="15px" height="15px">
                            <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                        </svg>
                    </button>
                </div>
            </div>
<!--             <div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11"> -->
<!--                 <div class="row"> -->
<!--                     <input class="flipkart-navbar-input col-xs-11" type="text" placeholder="Search for Products, Brands and more" name=""> -->
<!--                     <button class="flipkart-navbar-button col-xs-1"> -->
<!--                         <svg width="15px" height="15px"> -->
<!--                             <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path> -->
<!--                         </svg> -->
<!--                     </button> -->
<!--                 </div> -->
<!--             </div> -->
            <div class="cart largenav col-sm-2">
                <a href="<c:url value="/viewcart"/>"    class="cart-button">
                    <svg class="cart-svg " width="16 " height="16 " viewBox="0 0 16 16 ">
                        <path d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 " fill="#fff "></path>
                    </svg>Cart
                    <span class="item-number ">${items}</span>
                </a>
            </div>
        </div>
    </div>
</div><br>
<center><a class = "btn btn-default" href = "http://localhost:8081/chalangeFrontend/viewproducts" role = "button">View All Product</a></center>
<!-- <input type="button" class="btn btn-info" value="View All Product"> -->
<div class="container">
  <ul class="nav nav-pills nav-justified">
<c:if test="${pageContext.request.userPrincipal.name!= null}">
<security:authorize access="hasRole('ROLE_ADMIN')">
    <li><a href="<c:url value="/product"/>"><b>ADD PRODUCT</b></a></li>
    <li><a href="<c:url value="/category"/>"><b>ADD CATEGORY</b></a></li>
    <li><a href="<c:url value="/seller"/>"><b>ADD SELLER</b></a></li>
    </security:authorize>
    </c:if>
  </ul>
</div>
</body>
</html>
