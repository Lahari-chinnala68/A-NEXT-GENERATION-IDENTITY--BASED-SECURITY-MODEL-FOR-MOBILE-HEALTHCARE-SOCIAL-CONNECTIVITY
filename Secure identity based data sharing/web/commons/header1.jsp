<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	font-size: 10px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.subnav {
	float: left;
	overflow: hidden;
}

.subnav .subnavbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .subnav:hover .subnavbtn {
	background-color: gray;
	color: white;
	text-decoration: none;
}

.subnav-content {
	display: inherit;
	position: absolute;
	left: 0;
	background-color: red;
	width: 100%;
	z-index: 1;
}

.subnav-content a {
	float: left;
	color: white;
	text-decoration: none;
}

.subnav-content a:hover {
	background-color: #eee;
	color: black;
}
</style>
</head>
<body>
	<div class="navbar">
		<jsp:include page="title.jsp"></jsp:include>
		<a href="./networkDetail">NETWORK DETAIL</a> <a href="./cloudDetail">CLOUD
			DETAIL</a> <a href="./viewServiceReq">SERVICE REQ</a> <a
			href="./cqaToServer">CQL</a> <a href="./viewUsers">VIEW USERS</a> <a
			href="./viewFeedback">VIEW FEEDBACK</a> <a href="logout.jsp"
			class="w3-padding-large w3-hover-red w3-hide-small w3-right">LOGOUT</a>
	</div>
</body>
</html>