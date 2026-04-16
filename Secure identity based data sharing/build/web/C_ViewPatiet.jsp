<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authority PAGE</title>
<link href="Authority/style.css" rel="stylesheet">
<link href="table.css" rel="stylesheet">
</head>
<body background="images/download.jpg">
	<jsp:include page="authority/header2.jsp"></jsp:include>
	<center style="color: white;">
		<h3 style="color: white">
			<center> <h2> VIEW PATIENTS </h2>  
                            <table>
                                <tr><th>ID</th>><TH>USERNAME</TH>
                                <TH>EMAIL</TH><TH>ADDRESS</TH><TH>GENDER</TH><TH>DOB</TH><TH>STATUS</TH>
                                </tr>
                                <%try{
                                    
                                    ResultSet r=Queries.getExecuteQuery("select * from patient");
                                    while(r.next()){
                                        String status=r.getString("status");
                                     %>
                                <tr>
                                    <td><%=r.getString("id")%></tD>
                                   
                                    <td><%=r.getString("username")%></tD>
                                    <td><%=r.getString("email")%></tD>
                                    <td><%=r.getString("address")%></tD>
                                    <td><%=r.getString("gender")%></tD>
                                    <td><%=r.getString("dob")%></tD>
                                    <%if(status.equals("waiting")){
                                       %>
                                    <td><a href="Accept.jsp?id=<%=r.getString("id")%>">waiting</a></tD> 
                                    
                                    <%
                                    }else{
%>
  <td><%=r.getString("status")%></tD>
<%
}%>
                                </tr>
                                
                                <%
                                    }
                                }catch(Exception e){
                                    out.println(e);
                                    
}%>
                            </table>
	</center>
	<jsp:include page="authority/footer.jsp"></jsp:include>
</body>
</html>\