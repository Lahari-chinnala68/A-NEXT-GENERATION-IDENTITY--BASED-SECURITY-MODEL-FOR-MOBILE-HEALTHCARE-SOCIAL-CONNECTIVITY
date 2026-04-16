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

		<form action="AddDotorAction.jsp" method="post">
			<center> <h2> DOCTOR REGISTRATION </h2>  
                            <table>
                                <tr><th>Username</th><td><input type="text" name="uname" required=""></tD></tr>
                                 <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
                                    <tr><th>Email</th><td><input type="text" name="email" required=""></tD></tr>
                                       <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></tD></tr>
                                          <tr><th>Address</th><td><input type="text" name="address" required=""></tD></tr>
                                             <tr><th>Specialist</th><td><select name="specialist">
                                                         <option>---select---</option>
                                                         <%
                                                         try{
                                                             String query="select * from specialist";
                                                            ResultSet r=Queries. getExecuteQuery(query);
                                                         while(r.next()){
                                                           %>
                                                           <option value="<%=r.getString("specialist")%>"><%=r.getString("specialist")%></option>   
                                                           
                                                           <%
                                                         }
                                                         }catch(Exception e){
                                                           out.println(e); 
                                                         }
                                                         
                                                         %>
                                                     </select></tD></tr>
                                              <tr><th>DOB</th><td><input type="date" name="dob" required=""></tD></tr>
                                                           <tr><th>Gender</th><td><input type="text" name="gender" required=""></tD></tr>
                                                                        <tr><th></th><td><input type="submit" value="Add Doctor"></tD></tr>
                            </table>
			
		</form>
	</div>
        </center>
	
</body>
</html>