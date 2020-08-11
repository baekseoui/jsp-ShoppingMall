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
<link rel="stylesheet" href="../css/newjoin.css">

</head>
<body>
	<div id="wrap">
		<div id="header">

			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="container_newjoin">
			<div id="content_newjoin">
				<div class="wrap_account_newjoin" id="join_terms_agreement_complete_newjoin">
					<h2 class="blind_newjoin">비밀번호 찾기 성공</h2>
					<div class="login_notice login_tv_newjoin">
						<p class="tit_notice_newjoin"><span class="txt_emph_newjoin"
							id="name">"${param.name }" </span>회원님의<br>비밀번호가 고객님의 이메일주소로 발송되었습니다.</p>
							
						<p class="txt_notice_newjoin">
							northwind에서는 항상 좋은 상품과 서비스를 제공할 수 있도록 노력하겠습니다.<br>즐겁고 편리한 쇼핑을
							즐기세요!
						</p>
						<button type="button" class="u_btn btn_type1_newjoin" id="main" onclick = "location.href = '../main/main.jsp' ">
							메인으로가기</button>
						<button type="button" class="u_btn btn_type2_newjoin" id="login" onclick = "location.href = 'mainLoginPage.jsp' ">
							로그인</button>
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