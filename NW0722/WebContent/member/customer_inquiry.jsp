<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<script src="../jquery/inquiry_con.js"></script>
<link rel="stylesheet" href="../css/customer_service_con2.css">
<link rel="stylesheet" href="../css/inquiry_question.css">
<link rel="stylesheet" href="../css/inquirycon.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../jquery/inquiry_con.js"></script>


<script>
	function select_goods() {
		window.open("select_goods.so", "상품선택",
				"width=800, height=800, left=100, top=50");
	}

	function cont_Check() { //회원가입 누를시 전체 체크

		var form = document.myqna
		//아이디 입력여부
		if (!form.select_option.value) {
			alert("유형을 선택해주세요.");
			return false;
		} else if (!form.select_g.value) {
			alert("상품을 선택해주세요.");
			return false;
		} else if (!form.qna_cont.value) {
			alert("내용을 입력 해주세요.");
			return false;
		} else {
			alert("문의가 완료 되었습니다");
		}

	}
</script>

</head>
<body>
	<%
		session = request.getSession();
	String loginID = (String) session.getAttribute("login_Id");
	if (loginID == null) {
	%>
	<script type="text/javascript">
		alert('로그인이 필요합니다.');
		window.location = 'mainLoginPage.jsp';
	</script>
	<%
		}
	%>
	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="clear"></div>
		<div id="content">
			<div class="main_content">
				<!-- <div class="tit_wrap"></div> -->
				<div class="main_content_header">
					<!-- 추후 변경할지도 -->
					<p class="header_title">
						<b>1:1 문의하기</b>
					</p>
					<span><b>고객님 중심의 쇼핑몰</b></span>
					<p class="content_header_sub_title">이용중 불편한 점이나 문의사항을 보내주세요.
						확인후 답변드리겠습니다.</p>
				</div>
				<div class="clear"></div>

				<form action="customer_inquiry.so" enctype="multipart/form-data"
					method="post" name="myqna" onsubmit="return cont_Check()">
					<div class="second_content">
						<select title="선택옵션" name="select_option"
							class="category_selector">
							<option value="" selected="">유형을 선택해주세요</option>
							<option value="상품" data-coderemk1="" data-coderemark="">
								상품</option>
							<option value="배송" data-coderemk1="" data-coderemark="">
								배송</option>
							<option value="기타" data-coderemk1="" data-coderemark="">
								기타</option>
							<option value="교환/반품/취소" data-coderemk1="" data-coderemark="">
								교환/반품/취소</option>
						</select>
						<div class="clear"></div>
						<div class="item_prod">
							<span class="u_ipbx"> <input title="상품을 선택해 주세요"
								name="select_g" class="select_orderItem" value="" type="text"
								readonly="" placeholder="상품을 선택해 주세요(선택)"> <input
								type="hidden" value="" name="select_n" class="select_orderItem1">
							</span>
							<button class="u_btn_btn_search" type="button">상품선택</button>
						</div>
						<div class="item_inqiry">
							<textarea class="ft_cont" name="qna_cont" maxlength="1000"
								rows="5" cols="30" placeholder="문의 내용을 입력하세요."></textarea>
							<div class="cont_item_cont_tf_txt">
								<div class="item_inqiry_img">
									<input name="fileData" name="image" id="imgInput" type="file"
										title="이미지 선택" multiple accept="image/*" />
								</div>

							</div>

						</div>

						<!-- <div class="item_inquiry_item_rd">
				<strong class="tit_item">휴대폰 답변알림</strong>
				<button type="button" class="btn_alarm_on">
					<div class="btn_s">
						<span class="blind">받음</span>
					</div>
				</button>
				
			</div> -->
						<div class="clear"></div>
						<!-- <div class="item_inquiry_item_phone">
				<strong class="tit_item">휴대폰</strong> 
				<select title="선택옵션"
					class="phone_num_selector" name="phone_front">
					<option value="010" selected="">010</option>
					<option value="011">011</option>
					<option value="011">016</option>
					<option value="011">017</option>
					<option value="011">018</option>
					<option value="011">019</option>
				</select> <span class="u_ipbx"> <input title="휴대폰 뒷번호 입력란"
					class="int_cellPhone" type="tel" name="pohne_back">
				</span>
			</div> -->
						<div class="cont_btn">
							<div class="half">
								<div class="col_half_l">
									<button class="u_btn_btn_cancle" type="button">취소</button>
								</div>
							</div>
							<div class="half">
								<div class="col_half_r">
									<button class="u_btn_btn_save" type="submit">문의하기</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div id="clear"></div>
		<div id="footer">
			<jsp:include page="../section/footerMain.jsp" />

		</div>
	</div>
</body>
</html>