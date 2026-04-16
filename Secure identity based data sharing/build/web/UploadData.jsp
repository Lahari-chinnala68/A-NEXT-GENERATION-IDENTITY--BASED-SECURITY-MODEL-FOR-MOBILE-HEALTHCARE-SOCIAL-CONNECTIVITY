<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient PAGE</title>
<link href="Authority/style.css" rel="stylesheet">
<style>
    input[type=text]{
        color:black;
    }
</style>
</head>
<body background="images/download.jpg">
	<jsp:include page="authority/header1.jsp"></jsp:include>
	<center style="color: white;">
		<h3 style="color: white">
			Patient Home Page
                        <form action="FileUplaod" method="post" enctype="multipart/form-data">
                            <table>
                                <h3 style="margin-top: 100px;">Request For Attributes</h3>
                                <tr><th>Type</th><td><input type="text" name="type" required=""></td></tr>
                                     <tr><th>Symptoms</th><td><input type="text" name="symptoms" required=""></td></tr>
                                 <tr><th>Choose File</th><td><input type="file" name="file" required=""></td></tr>
           
                                     <tr><th></th><td><input type="submit" value="submit" style="color:black;"></td></tr>
                            </table>
                        </form>	
	</center>
	<jsp:include page="authority/footer.jsp"></jsp:include>
</body>
</html>\