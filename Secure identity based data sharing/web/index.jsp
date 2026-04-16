<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>
</head>
<body background="images/back1.jpg" color="white">
	<jsp:include page="commons/header.jsp"></jsp:include>
	<center style="color: white;">
		<h3 style="color: white">
			ABSTRACT
			</h2>
                        <h4 style="color: white" align="justify" style="margin:100px;">Cloud computing and social networks are changing the way of healthcare by providing realtime data sharing in a cost-effective manner. However, data security issue is one of the main obstacles to the wide application of mobile healthcare social networks (MHSNs), since health information is considered to be highly sensitive. In this paper, we introduce a secure data sharing and profile matching scheme for the MHSN in cloud computing. The patients can outsource their encrypted health records to cloud storage with an identity-based broadcast encryption technique, and share them with a group of doctors in a secure and efficient manner. We then present an attribute-based conditional data re-encryption construction which permits the doctors who satisfy the pre-defined conditions in the ciphertext to authorize the cloud platform to convert a ciphertext into a new ciphertext of an identity-based encryption scheme for specialist without leaking any sensitive information. Furthermore, we provide a profile matching mechanism in the MHSN based on identity-based encryption with an equality test, which helps patients to find friends in a privacy-preserving way and achieves flexible authorization on the encrypted health records with resisting the keywords guessing attack. Moreover, this mechanism reduces the computation cost on the patient side. The security analysis and experimental evaluation show that our scheme is practical for protecting the data security and privacy in the MHSN.</h4>
			
		</h3>
	</center>
	<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
</html>