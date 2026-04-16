<%@page import="com.database.Queries"%>
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
<link href="table.css" rel="stylesheet">
</head>
<body background="images/download.jpg">
	<jsp:include page="authority/header1.jsp"></jsp:include>
        <center>
	<div class="container" style=" color: white; border: 1px solid white;margin-top:100px; width: 50%;background-color: rgba(0,0,0,0.5);border-radius:15px">

		
                  
			<center> <h2> VIEW RESPONSE </h2>  
                            <table>
                                <tr><th>ID</th><th>FILE</th><th>Attributes</th></tr>
                                <%try{
                                    String patient=(String)session.getAttribute("username");
                                    ResultSet r=Queries.getExecuteQuery("select * from attributereq where patient='"+patient+"'");
                                    while(r.next()){
                                     %>
                                <tr>
                                    <td><%=r.getString("id")%></tD>
                                    <td><%=r.getString("fname")%></tD>
                                     <td><%=r.getString("attribute1")%><%=r.getString("attribute2")%><%=r.getString("attribute3")%></tD>
                            

                                </tr>
                                
                                <%
                                    }
                                }catch(Exception e){
                                    out.println(e);
                                    
}%>
                            </table>
			
		</form>
                         
	</div>
        </center>
	
</body>
</html>