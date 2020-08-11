<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>North Wind</title>
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/categoriesPage.css" />

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="../container/assets/favicon.ico" />
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="../container/css/all.css">
<!-- Filckity -->
<link rel="stylesheet" href="../container/css/flickity.min.css">
<!-- Custom Style -->
<link rel="stylesheet" href="../container/css/style.css">
<!-- <link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"> -->


</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="contents">
			<jsp:include page="../container/Index.jsp"/>
		</div>	
		<div id="footer">
			<jsp:include page="../section/footerMain.jsp" />
		</div>
	</div>
<script src="../container/js/flickity.pkgd.min.js"></script>
<script src="../container/js/easytimer.min.js"></script>
<script src="../container/js/main.js"></script>
</body>
</html>
