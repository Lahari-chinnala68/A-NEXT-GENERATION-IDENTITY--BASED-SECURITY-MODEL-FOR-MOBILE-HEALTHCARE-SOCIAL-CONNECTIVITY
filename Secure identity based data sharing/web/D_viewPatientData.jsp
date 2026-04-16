<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor PAGE</title>
<link href="Authority/style.css" rel="stylesheet">
<style>
    input[type=text]{
        color:black;
    }
</style>
</head>
<body background="images/download.jpg">
	<jsp:include page="authority/header3.jsp"></jsp:include>
	<center style="color: white;">
		<h3 style="color: white">
			
                  <%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authority PAGE</title>
<link href="Authority/style.css" rel="stylesheet">
<link href="table.css" rel="stylesheet">
</head>
<body background="images/download.jpg">
	
	<center style="color: white;">
		<h3 style="color: white">
                    <%if(request.getParameter("id")!=null){
                        ResultSet r1=Queries.getExecuteQuery("select * from files where id='"+request.getParameter("id")+"'");
if(r1.next()){                     
%>
<form action="ShareAction.jsp" method="post">
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
<textarea cols="30" rows="12" style="color: black;" name="data"><%=r1.getString("data")%></textarea>  
<input type="submit" value="Share">
</form>
<a href="D_viewPatientData.jsp">Back</a>     
                      <%
                          }
                    }else{%>
			<center> <h2> VIEW PATIENTS DATA</h2>  
                            <table>
                                <tr><th>ID</th>><TH>PATIENT</TH>
                                <TH>SYMPTOMS</TH><TH>VIEW FILE</TH>
                                </tr>
                                <%
                                    try{
                                    
                                    ResultSet r=Queries.getExecuteQuery("select * from files where type='"+session.getAttribute("specialist")+"'");
                                    while(r.next()){
                                      
                                     %>
                                <tr>
                                    <td><%=r.getString("id")%></tD>
                                   
                                    <td><%=r.getString("patient")%></tD>
                                    <td><%=r.getString("symptoms")%></tD>
                                   
                                      
                                    <td><a href="D_viewPatientData.jsp?id=<%=r.getString("id")%>">View File</a></tD> 
                                    
                                    <%
                                        }
                                   %>
                                   
                                </tr>
                                   <%
                                    
                                }catch(Exception e){
                                    out.println(e);
                                    
}%>
                            </table>
                            <%}%>
	</center>
	<jsp:include page="authority/footer.jsp"></jsp:include>
</body>
</html>
 