<%-- 
    Document   : ShareAction
    Created on : May 12, 2020, 12:00:28 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String doctor=(String)session.getAttribute("doctor");
       String id=(String)session.getAttribute("id");
       
       
String name=request.getParameter("id");
String data=request.getParameter("data");
try{
    int i=Queries.getExecuteUpdate("insert into reencrypt values(null,'"+doctor+"','"+name+"','"+data+"','waiting','waiting')");
    if(i>0){
        response.sendRedirect("D_viewPatientData.jsp?msg=sucess");
    }else{
         response.sendRedirect("D_viewPatientData.jsp?msg=failed");
    }
    
}catch(Exception e){
    out.println(e);
}


%>