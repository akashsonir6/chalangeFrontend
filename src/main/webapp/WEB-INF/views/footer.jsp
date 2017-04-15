<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Footer</title>
<style>
	.footer{
	background:#A6FFFF;
	padding:4em 0em 0em;
}
.footer h4 {
	font-size: 1em;
	font-weight: 700;
	color: #FC6391;
	text-transform: uppercase;
	padding: 0 0 0.5em 0;
	margin: 0 0 0.5em;
}
.footer h5{
	font-size:1.3em;
	font-weight:600;
	color:#FC6391;
	text-transform:uppercase;
	padding:0 0 0.5em 0;
	margin:0 0 0.5em;
}
.location p{
	font-size:1em;
	font-weight:400;
	color:#7F7D7E;
	text-transform:uppercase;
}
.customer p{
	font-size:0.8125em;
	font-weight:400;
	color:#7F7D7E;
	text-transform:uppercase;
	padding:0 0 0.5em 0;
	margin:0 0 0.5em;
	line-height:1.5em;
}
.customer h6{
	font-size:1em;
	font-weight:400;
	color:#7F7D7E;
	text-transform:uppercase;
	padding:0 0 0.5em 0;
	margin:0 0 0.5em;
}
.social{
	text-align:center;
}
.face-b{
	margin:1em 0em; 
	position:relative;
}
.sign form input[type="text"] {
	padding: 0.5em 0.5em;
	margin-bottom: 2%;
	width: 100%;
	background: none;
	color:#7F7D7E;
	font-size: 14px;
	outline: none;
	font-weight: 400;
	text-indent: 10px;
	border: 1px solid #FC6294;
	border-radius: 3px; 
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-msborder-radius: 3px;
}
.footer-top{
	padding:1em 0em 2em;
	border-bottom:1px solid #EDD2DB;
}
.footer-bottom a {
	color: #f84f86;
}
.footer-bottom p {
	color: #7D7F7C;
	font-size: 1em;
	margin:1em 0em;
}
i.fb {
	width: 32px;
	height: 32px;
	display: inline-block;
	background: url(../images/social-icons-2.png) no-repeat 0px 0px;
	position: absolute;
	bottom: 0px;
	left: 130px;
}
i.fb:hover {
	opacity:0.7;
}
i.twt {
	width: 32px;
	height: 32px;
	display: inline-block;
	background: url(../images/social-icons-2.png) no-repeat -36px 0px;
	position: absolute;
	bottom: 0px;
	left: 146px;
}
i.twt:hover{
	opacity:0.7;
}
/*-- /footer --*/
/*-- about --*/
.about {
	padding: 3em 0em;
	background:#fff;
}
.about img {
	margin: 0em 0em 2em;
}
.about h3 {
	font-size: 2.5em;
	color: #5A0F16;
	padding: 1em 0;
}
.about p {
	font-size: 1em;
	font-weight:300;
	color: #7D7F7E;
	line-height: 1.8em;
	padding: 1em 0;
}
.about a {
	background: #FF3E91;
	color: #FFF;
	padding: 7px 10px;
	display: inline-block;
	font-size: 1.5em;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	margin-top: 0.5em;
	text-decoration:none;
}
.about a:hover{
	background:#5a0f16;
}</style>
	
</head>

<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-3 location">
					<h4>Head Office</h4>
					<p>Bangalore, Karnataka, India</p>
					<h4>Our Branches</h4>
					<p>Bring road patna.</p>
					<p>Greater Noida Delhi.</p>
					<p>Mumbai.</p>
				</div>
				<div class="col-md-3 customer">
					<h4>customer Care</h4>
					<h6>+919148885398</h6>
					<h4>phone</h4>
					<h6>+919148885398</h6>
					<h4>contact us</h4>
					<h6>contact us page.</h6>
				</div>
				<div class="col-md-3 social">
					<h4>get social</h4>
					<div class="face-b">
						<img src="resource/images/fb.png" title="name"/>
						<a href="facebook.com"><i class="fb"> </i></a>
					</div>
					<div class="twet">		
						<img src="resource/images/twitter-icon.png" title="name"/>
							<a href="twitter.com"><i class="twt"> </i></a>
					</div>	
				</div>
				
					<div class="clearfix"> </div>
			</div>
			<div class="footer-bottom">
				<p>Designed By Akash soni</a></p>
			</div>
		</div>
	</div>

</html>