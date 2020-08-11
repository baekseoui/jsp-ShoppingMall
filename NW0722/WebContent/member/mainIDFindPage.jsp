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
<link rel='stylesheet' href='../css/mainIDFind.css'>
</head>
<body>
	<div id="wrap">
		<div id="header">
			
		<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="content">
			<div id="id_fine_content">
				<div class="wrap_account">
					<h2 class="sub_title is_line">아이디 찾기</h2>
					<span id="add_exp">입력하신 정보는 아이디 찾기에만 사용되며 <em class="red_color">저장되지 않습니다.</em></span>
					<div class='cont_find'>
						<!-- <p class='txt_info' id='txt_info'></p> -->
						<form action='mainIDFindPage.so' method='post' name='findIDFrm'>
							<input class='input_all' type='text' name='name' id='name'
								placeholder='이름입력'> <br> <input class='input_all'
								type='text' name='email' id='email' placeholder='이메일 입력'>
							<br> <input id='check_id' type='submit' value='확인'>
						</form>
						<div class='find_account'>
							<a href='mainPwdFindPage.jsp' class='link_find' id='find_pwd'>비밀번호
								찾기 </a>&nbsp;&nbsp;| <a href='signupPage.jsp' class='link_find'
								id='join_in'>&nbsp;&nbsp;회원가입</a>
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