<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
<link href="commons/style.css" rel="stylesheet">
</head>
<body background="images/download.jpg">
	<jsp:include page="commons/header.jsp"></jsp:include>
	<div class="container"
		style="color: white; border: 1px solid white; width: 50%; height: 50%; background-color: rgba(0, 0, 0, 0.5); border-radius: 15px">
		<form action="SPECIALAction.jsp" method="post">

			<center>
				<h2>SPECIALIST Login</h2>
				<h5 style="color: red">${login}</h5>
			</center>
			<hr>

			<label>USER NAME</label> 
			<input type="text" style="width: 100%; height: 37px; color: white" name="uname" placeholder="Enter User Name" required> 
			
			<label>PASSWORD</label>
			<input type="password" style="width: 100%; height: 37px; color:white;" name="pass" placeholder="Enter User Password" required><br>

			<div class="clearfix">
				
				<button type="submit" class="signupbtn">Login</button>
                             
			</div>
		</form>
	</div>
	<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>