<%-- 
    Document   : newjspAddDotorAction
    Created on : May 12, 2020, 9:29:53 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

           String fid=request.getParameter("fid");
           String fname=request.getParameter("fname");
            String attribute1= request.getParameter("attribute1");
           String attribute2=request.getParameter("attribute2");
           String attribute3=request.getParameter("attribute3");
     
           
   String query="update attributereq set attribute1='"+attribute1+"',attribute2='"+attribute2+"',attribute3='"+attribute3+"'where id='"+fid+"'";

try{
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Attribute Generated Successfully");
            window.location="A_ViewFiels.jsp";
        </script> 
        
        <%
    }else{
  %>
        <script type="text/javascript">
            window.alert("Failed To Generate Attribute");
            window.location="A_ViewFiels.jsp";
        </script> 
        
        <%
}
}catch(Exception e){
 out.println(e);   
}
%>