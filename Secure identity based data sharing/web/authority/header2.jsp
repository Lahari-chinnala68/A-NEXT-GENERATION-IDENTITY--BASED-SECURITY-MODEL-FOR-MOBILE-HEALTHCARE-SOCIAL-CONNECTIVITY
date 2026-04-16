<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: sans-serif;
}

.navbar {
	width: 100%;
	background-color:black;
	
}

/* Navbar links */
.navbar a {
	float: right;
	text-align: center;
	padding: 12px;
	color: white;
	text-decoration: none;
	font-size: 17px;
}

/* Navbar links on mouse-over */
.navbar a:hover {
	background-color: #000;
	background-color: gray;
}

/* Current/active navbar link */
.active {
	background-color: green;
}
/* Add responsiveness - will automatically display the navbar vertically instead of horizontally on screens less than 500 pixels */
@media screen and (max-width: 500px) {
	.navbar a {
		float: none;
		display: block;
	}
}

</style>
</head>
<body>
	<div class="navbar">
	<jsp:include page="title.jsp"></jsp:include>
        <a href="index.jsp"><i class="fa fa-fw fa-user"></i>Logout</a>
	
	
		<a href="C_Re_encReq.jsp"><i class="fa fa-fw fa-user"></i>View Re_Encryption Req </a>		
	
		<a href="C_ViewPatiet.jsp"><i class="fa fa-fw fa-user"></i>View Patient </a>
		<a href="CSPHome.jsp" ><i class="fa fa-fw fa-home"> </i>HOME</a>
		
		<!-- <a href="index.jsp" style="float:left;font-family: Algerian;color:white;background-color: green">CROWDSOURCING TO PROVIDE QOS</a> -->		
	</div>
</body>
</html>