<%-- 
    Document   : SendMessageAction
    Created on : May 11, 2020, 12:00:52 PM
    Author     : KishanVenky
--%>

<%@page import="com.file.upload.encryption"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="com.database.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
            
String id=request.getParameter("id");
String data=request.getParameter("data");
 KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
          System.out.println("secret key:"+skey);   
          String cipher=new encryption().encrypt(data,s);

try{
    String query="update reencrypt set status1='"+cipher+"'where id='"+id+"'";
    
    int i=Queries.getExecuteUpdate(query);
    
    if(i>0){
      %>
      <script type="text/javascript">
          window.alert("Re_Encryption Done..!!");
          window.location="C_Re_encReq.jsp";
      </script>  
              
    <%          
    }else{
%>
      <script type="text/javascript">
          window.alert("Failed..!!");
          window.location="C_Re_encReq.jsp";
      </script>  
              
    <%      
}
    
}catch(Exception e){
  out.println(e);  
}
       %>
