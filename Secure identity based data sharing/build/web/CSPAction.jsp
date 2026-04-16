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
    ResultSet rs=st.executeQuery("select *from csp where username='"+username+"' and password='"+password+"'");
    if(rs.next())
    {
        %>
        <script type="text/javascript">
            window.alert("CSP Login Sucessfully");
            window.location="CSPHome.jsp";
            </script>
            <%
    }

            else
{
            %>

<script type="text/javascript">
            window.alert("CSP Login Fail");
            window.location="CSPLogin.jsp";
            </script>
            <%
    
}
}
catch(Exception e)
{
out.println(e);
}
            %>