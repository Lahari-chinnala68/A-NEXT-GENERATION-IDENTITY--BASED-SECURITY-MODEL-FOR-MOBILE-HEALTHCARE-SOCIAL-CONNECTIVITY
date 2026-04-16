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
	<jsp:include page="authority/header.jsp"></jsp:include>
        <center>
	<div class="container" style=" color: white; border: 1px solid white;margin-top:100px; width: 50%;background-color: rgba(0,0,0,0.5);border-radius:15px">

		
                    <%String id=request.getParameter("id");
                    String fname=request.getParameter("fname");
                    session.setAttribute("fid",id);
                    session.setAttribute("fname",fname);
                    if(id!=null&&fname!=null){
                        %>
                        
                         
                          
                               <form action="AA.jsp" method="post">
                            <table>
                                <h3 style="margin-top: 100px;">Attributes</h3>
                                <tr><th>ID</th><td><input type="text" name="fid" value="<%=id%>"></td></tr>
                                <tr><th>FILENAME</th><td><input type="text" name="fname" value="<%=fname%>"></td></tr>
                               
                                <tr><th>Attribute1</th><td><input type="text" name="attribute1" ></td></tr>
                                  <tr><th>Attribute2</th><td><input type="text" name="attribute2" ></td></tr>
                                       <tr><th>Attribute3</th><td><input type="text" name="attribute3" ></td></tr>
                                <tr><th></th><td><input type="submit" value="submit" style="color:black;"></td></tr>
                            </table>
                        </form>	 
   
                        <%
                        
}else{%>
			<center> <h2> VIEW ALL REQUESTS </h2>  
                            <form action="AddSpecialAction.jsp" method="post">
                            <table>
                                <tr><th>ID</th><th>FILE</th><th>STATUS</th></tr>
                                <%try{
                                    
                                    ResultSet r=Queries.getExecuteQuery("select * from attributereq where attribute1='waiting'");
                                    while(r.next()){
                                     %>
                                <tr>
                                    <td><%=r.getString("id")%></tD>
                                    <td><%=r.getString("fname")%></tD>
                                    <td><a href="A_ViewFiels.jsp?id=<%=r.getString("id")%>&fname=<%=r.getString("fname")%>">Attribute Requestor</a></tD>

                                </tr>
                                
                                <%
                                    }
                                }catch(Exception e){
                                    out.println(e);
                                    
}%>
                            </table>
			
		</form>
                            <%}%>
	</div>
        </center>
	
</body>
</html>