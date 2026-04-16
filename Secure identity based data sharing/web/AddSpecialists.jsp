<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authority PAGE</title>
<link href="Authority/style.css" rel="stylesheet">
</head>
<body background="images/download.jpg">
	<jsp:include page="authority/header.jsp"></jsp:include>
        <center>
	<div class="container" style=" color: white; border: 1px solid white;margin-top:100px; width: 50%;background-color: rgba(0,0,0,0.5);border-radius:15px">

		<form action="AddSpecialAction.jsp" method="post">
			<center> <h2> ADD SPECIALIST </h2>  
                            <table>
                                            <tr><th>specialist</th><td><input type="text" name="specialist" required=""></tD></tr>
                                                                        <tr><th></th><td><input type="submit" value="Add Specialst"></tD></tr>
                            </table>
			
		</form>
	</div>
        </center>
	
</body>
</html>