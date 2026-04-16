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
			<center> <h2> VIEW RE-ENCRYPT REQUEST </h2>  
                      
                            <table>
                                <tr><th>ID</th>><TH>DATA</TH>
                                <TH>STATUS</TH>
                                </tr>
                                <%try{
                                    
                                    ResultSet r=Queries.getExecuteQuery("select * from reencrypt");
                                    while(r.next()){
                                       
                                     %>
                                <tr>
                                    <td><%=r.getString("id")%></tD>
                                   
                                    <td><textarea cols="30" rows="10"><%=r.getString("data")%></textarea></tD>
                                   
                                    <td><a href="ReEncypt.jsp?id=<%=r.getString("id")%>&data=<%=r.getString("data")%>">Re_Encrypt</a></tD> 
                                    
                                    
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