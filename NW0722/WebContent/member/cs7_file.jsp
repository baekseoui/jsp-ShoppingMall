<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/inquirycon.css">
<link rel="stylesheet" href="../css/customer_service_con.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../jquery/inquiry_con.js"></script>


<script>
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
<script type="text/javascript">
function loginNeeded() {
return confirm("로그인이 필요합니다.")

}
</script>
<div id="aside">
	<h2 class="tit_cs_linkCustomerCenterMain">
		<a class="service_a" href="customer_service.jsp">고객센터</a> <strong
			class="blind">메뉴</strong>
	</h2>
	<div class="cs_snb">
		<ul class="list_snb">
			<li><strong class="tit_sub">자주하는 질문</strong>
				<ul class="list_snb_sub">
					<li class="_cat05" data-cat="05"><a
						href="customer1_shipping.jsp" class="service_a2"
						spcid="CUST____main__topq__">배송</a></li>
					<li class="_cat02" data-cat="02"><a href="customer2_order.jsp"
						class="service_a2" spcid="CUST____main__topq__">주문/결제</a></li>
					<li class="_cat06" data-cat="06"><a
						href="customer3_return.jsp" class="service_a2"
						spcid="CUST____main__topq__">반품/교환/환불</a></li>
					<li class="_cat01" data-cat="01"><a
						href="customer4_member.jsp" class="service_a2"
						spcid="CUST____main__topq__">회원</a></li>
					<li class="_cat09" data-cat="09"><a href="customer5_goods.jsp"
						class="service_a2" spcid="CUST____main__topq__">상품</a></li>
					<li class="_cat10" data-cat="10"><a href="customer6_etc.jsp"
						class="service_a2" spcid="CUST____main__topq__">기타</a></li>
				</ul></li>
			<li><strong class="tit_sub">고객활동</strong>
				<ul class="list_snb_sub">
					<li><a href="customer7_1by1.so" class="service_a2"
						spcid="CUST____main__board__">고객센터 문의하기</a></li>
					<li><c:choose>
							<c:when test="${empty sessionScope.login_Name}">
								<a href="mainLoginPage.jsp" class="service_a2"
									spcid="CUST____main__board__" onclick="loginNeeded();">나의
									문의 내역</a>
							</c:when>
							<c:otherwise>
								<a href="myqna_view.so" class="service_a2"
									spcid="CUST____main__board__">나의 문의 내역</a>
							</c:otherwise>
						</c:choose></li>

				</ul></li>

		</ul>

	</div>
</div>
<div id="content">
	<div class="main_content">
		<!-- <div class="tit_wrap"></div> -->
		<div class="main_content_header">
			<!-- 추후 변경할지도 -->
			<p class="header_title">
				<b>1:1 문의하기</b>
			</p>
			<span><b>고객님 중심의 쇼핑몰</b></span>
			<p class="content_header_sub_title">이용중 불편한 점이나 문의사항을 보내주세요. 확인후
				답변드리겠습니다.</p>
		</div>
		<div class="clear"></div>

		<form action="customer_inquiry.so" enctype="multipart/form-data"
			method="post" name="myqna" onsubmit="return cont_Check()">
			<div class="second_content">
				<select title="선택옵션" name="select_option" class="category_selector">
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
					<textarea class="ft_cont" name="qna_cont" maxlength="1000" rows="5"
						cols="30" placeholder="문의 내용을 입력하세요."></textarea>
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