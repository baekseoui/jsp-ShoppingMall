<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/customer_service_con.css">
<link rel="stylesheet" href="../css/inquiry_question.css">

</head>
<body>
 <%
	session=request.getSession();
	String loginID=(String)session.getAttribute("login_Id");
	if(loginID == null){
	%>
	<script type="text/javascript">
		alert('로그인이 필요합니다.');
		window.location = 'mainLoginPage.jsp';
	</script>
	<%} %> 
    <div id="wrap">
        <div id="header">
         	
		<jsp:include page="../section/headerMain.jsp" />
        </div>
        <div id="contents">
			<jsp:include page='cs7_file.jsp' />
        </div>
        <div id="footer">
            <jsp:include page="../section/footerMain.jsp" />
		
        </div>
    </div>
</body>
</html>