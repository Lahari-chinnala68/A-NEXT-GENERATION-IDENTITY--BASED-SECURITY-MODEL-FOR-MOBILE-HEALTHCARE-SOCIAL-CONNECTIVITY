<%-- 
    Document   : accept
    Created on : 6 Aug, 2018, 5:17:49 PM
    Author     : VENKAT
--%>



<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String username=request.getParameter("id");
    
    try
{
    
    int i=Queries.getExecuteUpdate("update reencrypt set status2='Authorized' where id='"+username+"'");
    if(i==1)
    {
       %>
            <script type="text/javascript">
                window.alert(" Sucess");
                window.location="SpecialViewRequest.jsp";
                        
                </script>
            <% 
        
        
    }
else
{
%>
            <script type="text/javascript">
                window.alert("Failed");
                window.location="SpecialViewRequest.jsp";
                        
                </script>
            <%
}
}
catch(Exception e)
{
out.println(e);

}
%>
