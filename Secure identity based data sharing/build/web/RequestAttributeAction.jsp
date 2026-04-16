<%-- 
    Document   : newjspAddDotorAction
    Created on : May 12, 2020, 9:29:53 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String fname=request.getParameter("fname");
String id=(String)session.getAttribute("id");
String username=(String)session.getAttribute("username");

   String query="insert into AttributeReq values(null,'"+fname+"','"+username+"','"+id+"','waiting','waiting','waiting')";

try{
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Request Sent To Authority");
            window.location="PatientHome.jsp";
        </script> 
        
        <%
    }else{
  %>
        <script type="text/javascript">
            window.alert("Request sending Failed");
            window.location="PatientHome.jsp";
        </script> 
        
        <%
}
}catch(Exception e){
 out.println(e);   
}
%>