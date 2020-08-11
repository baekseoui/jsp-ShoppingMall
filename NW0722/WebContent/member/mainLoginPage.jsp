<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel='stylesheet' href='../css/mainLogin.css'>
</head>
<body>
	<div id="wrap">
		<div id="header">

			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="content">
			<div id="login_content">
				<div class="wrap_account">
					<h1 class="blind">로그인</h1>
					<div class='cont_login'>
						<div class='tit_login'>
							<a href='index.jsp'><img src='../img/northwind8.png'></a>
						</div>
						
						
						<form action='login.so' method='post' name='loginFrm'>
							<input class='input_all' type='text' name='id' id='id_input'
								placeholder='아이디 입력 : 1~5자'> <br> <input
								class='input_all' type='password' name='pwd' id='pwd_input'
								placeholder='비밀번호 입력 : 영문, 숫자혼합 6~12자'> <br> <input
								id='login_btn' type='submit' value='로그인'>
						</form>
						
						
						
						<div class='find_account'>
							<a href='mainIDFindPage.jsp' class='link_find' id='findId'>아이디
								찾기</a>&nbsp;&nbsp;| <a href='mainPwdFindPage.jsp' class='link_find'
								id='findId'>&nbsp;&nbsp;비밀번호 찾기 </a>&nbsp;&nbsp;| <a
								href='signupPage.jsp' class='link_find' id='findId'>&nbsp;&nbsp;회원가입</a>
						</div>
					</div>
				</div>
			</div>


		</div>
		<div id="footer">

			<jsp:include page="../section/footerMain.jsp" />


		</div>
	</div>
</body>
</html>