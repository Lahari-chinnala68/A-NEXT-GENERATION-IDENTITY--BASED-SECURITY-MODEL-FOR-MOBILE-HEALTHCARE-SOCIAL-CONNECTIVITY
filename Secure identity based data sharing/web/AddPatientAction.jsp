<%-- 
    Document   : newjspAddDotorAction
    Created on : May 12, 2020, 9:29:53 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%


String dob= request.getParameter("dob");
           String email=request.getParameter("email");
           String mobile=request.getParameter("mobile");
            String address= request.getParameter("address");
           String username=request.getParameter("uname");
           String password=request.getParameter("pass");
           String gender=request.getParameter("gender");
           
   String query="insert into patient values(null,'"+email+"','"+mobile+"','"+address+"','"+username+"','"+password+"','"+dob+"','"+gender+"','waiting')";

try{
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Patient Registration Successfully");
            window.location="PatientLogin.jsp";
        </script> 
        
        <%
    }else{
  %>
        <script type="text/javascript">
            window.alert("Patient Registration Failed");
            window.location="PatientLogin.jsp";
        </script> 
        
        <%
}
}catch(Exception e){
 out.println(e);   
}
%>