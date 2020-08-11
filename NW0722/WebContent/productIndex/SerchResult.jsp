<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SerchResult</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css?b">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/categoriesPage.css?a" />
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/headerMain.jsp" />
			</div>
			<div id="contents">
				<div id=total_list>
					<h2>검색 결과 페이지</h2>
					<div id=main_list>
						상품출력 DIV
					</div>
				</div>
			</div>
			<div id="footer">
				<jsp:include page="../section/footerMain.jsp" />
			</div>
		</div>
	</div>
</body>
</html>