<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient PAGE</title>
<link href="Authority/style.css" rel="stylesheet">
<style>
    input[type=text]{
        color:black;
    }
</style>
</head>
<body background="images/download.jpg">
	<jsp:include page="authority/header1.jsp"></jsp:include>
	<center style="color: white;">
		<h3 style="color: white">
			
                        
                    <%String id=(String)session.getAttribute("id");
                    try{
                  ResultSet r=Queries.getExecuteQuery("select * from reencrypt where name='"+id+"'");
                  if(r.next()){
                %>
                
                <h4>Profile Has Been Matched</h4>
                <%
                      
                  }
else{
%>
                
                <h4>Profile Has Not Matched</h4>
                <%
}

                        
                    }catch(Exception e){
                      out.println(e);  
                    }
                    %>    
                        
                        
	</center>
	<jsp:include page="authority/footer.jsp"></jsp:include>
</body>
</html>