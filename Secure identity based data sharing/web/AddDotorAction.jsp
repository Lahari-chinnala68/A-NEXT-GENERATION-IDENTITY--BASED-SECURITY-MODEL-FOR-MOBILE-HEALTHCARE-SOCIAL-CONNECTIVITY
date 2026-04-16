<%-- 
    Document   : newjspAddDotorAction
    Created on : May 12, 2020, 9:29:53 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String specialist=request.getParameter("specialist");

String dob= request.getParameter("dob");
           String email=request.getParameter("email");
           String mobile=request.getParameter("mobile");
            String address= request.getParameter("address");
           String username=request.getParameter("uname");
           String password=request.getParameter("pass");
           String gender=request.getParameter("gender");
           
   String query="insert into doctor values(null,'"+specialist+"','"+email+"','"+mobile+"','"+address+"','"+username+"','"+password+"','"+dob+"','"+gender+"')";

try{
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Doctor Added Successfully");
            window.location="AddDoctors.jsp";
        </script> 
        
        <%
    }else{
  %>
        <script type="text/javascript">
            window.alert("Doctor Adding Failed");
            window.location="AddDoctors.jsp";
        </script> 
        
        <%
}
}catch(Exception e){
 out.println(e);   
}
%>