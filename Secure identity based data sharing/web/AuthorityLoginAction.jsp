<%-- 
    Document   : AuthorityLoginAction
    Created on : May 10, 2020, 4:55:42 PM
    Author     : Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.DBCon" %>

<%
String username=request.getParameter("uname");
String password=request.getParameter("pass");
session.setAttribute(username, "username");
try
{
    Connection con=DBCon.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from authority where username='"+username+"' and password='"+password+"'");
    if(rs.next())
    {
        %>
        <script type="text/javascript">
            window.alert("Authority Login Sucessfully");
            window.location="AuthorityHome.jsp";
            </script>
            <%
    }

            else
{
            %>

<script type="text/javascript">
            window.alert("Authority Login Fail");
            window.location="AuthorityLogin.jsp";
            </script>
            <%
    
}
}
catch(Exception e)
{
out.println(e);
}
            %>