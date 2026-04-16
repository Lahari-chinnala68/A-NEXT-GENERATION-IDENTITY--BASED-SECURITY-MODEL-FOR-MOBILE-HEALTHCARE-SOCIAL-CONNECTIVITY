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
    ResultSet rs=st.executeQuery("select *from doctor where username='"+username+"' and password='"+password+"'");
    if(rs.next())
    {
        session.setAttribute("email",rs.getString("email"));
        session.setAttribute("username",rs.getString("username"));
        session.setAttribute("specialist",rs.getString("specialist"));
        session.setAttribute("id",rs.getString("id"));
 
        
       
        %>
        <script type="text/javascript">
            window.alert("Doctor Login Sucessfully");
            window.location="DoctorHome.jsp";
            </script>
            <%
    }

            else
{
            %>

<script type="text/javascript">
            window.alert("Please Check Username/Password");
            window.location="DoctorLogin.jsp";
            </script>
            <%
    
}
}
catch(Exception e)
{
out.println(e);
}
            %>