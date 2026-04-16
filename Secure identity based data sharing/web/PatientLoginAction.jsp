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
    ResultSet rs=st.executeQuery("select *from patient where username='"+username+"' and password='"+password+"'");
    if(rs.next())
    {
        session.setAttribute("email",rs.getString("email"));
        session.setAttribute("username",rs.getString("username"));
        session.setAttribute("id",rs.getString("id"));
        String status=rs.getString("status");
        if(status.equals("waiting")){
          %>
        <script type="text/javascript">
            window.alert("Your Not Authorized Person");
            window.location="PatientLogin.jsp";
            </script>
            <%   
        }else{
        %>
        <script type="text/javascript">
            window.alert("Patient Login Sucessfully");
            window.location="PatientHome.jsp";
            </script>
            <%
    }
}
            else
{
            %>

<script type="text/javascript">
            window.alert("Please Check Username/Password");
            window.location="PatientLogin.jsp";
            </script>
            <%
    
}
}
catch(Exception e)
{
out.println(e);
}
            %>