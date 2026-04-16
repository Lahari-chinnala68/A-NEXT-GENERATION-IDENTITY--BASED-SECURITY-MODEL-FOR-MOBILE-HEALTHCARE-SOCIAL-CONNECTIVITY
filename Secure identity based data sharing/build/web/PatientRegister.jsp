<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
<link href="commons/style.css" rel="stylesheet">
<style>
   input[type=text]{
       color:white;
    }
    input[type=password]{
       color:white;
    }
</style>
</head>
<body background="images/download.jpg">
	<jsp:include page="commons/header.jsp"></jsp:include>
        <center>
	<div class="container"
		style="color: white; border: 1px solid white;margin-top:100px; width: 50%; height: 50%; background-color: rgba(0, 0, 0, 0.5); border-radius: 15px">
		<form action="AddPatientAction.jsp" method="post">
			<center> <h2> PATIENT REGISTRATION </h2>  
                            <table>
                                <tr><th>Username</th><td><input type="text" name="uname" required=""></tD></tr>
                                 <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
                                    <tr><th>Email</th><td><input type="text" name="email" required=""></tD></tr>
                                       <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></tD></tr>
                                          <tr><th>Address</th><td><input type="text" name="address" required=""></tD></tr>
                                          
                                              <tr><th>DOB</th><td><input type="date" name="dob" required=""></tD></tr>
                                                           <tr><th>Gender</th><td><input type="text" name="gender" required=""></tD></tr>
                                                                        <tr><th></th><td><input type="submit" value=REGISTER></tD></tr>
                            </table>
			
		</form>
	</div>
</center>
</body>
</html>