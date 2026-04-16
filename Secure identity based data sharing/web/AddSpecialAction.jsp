<%-- 
    Document   : newjspAddDotorAction
    Created on : May 12, 2020, 9:29:53 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String specialist=request.getParameter("specialist");


   String query="insert into specialist values(null,'"+specialist+"')";

try{
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Specialists Added Successfully");
            window.location="AddSpecialists.jsp";
        </script> 
        
        <%
    }else{
  %>
        <script type="text/javascript">
            window.alert("Specialists Adding Failed");
            window.location="AddSpecialists.jsp";
        </script> 
        
        <%
}
}catch(Exception e){
 out.println(e);   
}
%>