<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../jquery/customer_service_con.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/customer_service_con.css">
<link rel="stylesheet" href="../css/inquiry_question.css">

</head>
<body>
<script type="text/javascript">
function loginNeeded() {
return confirm("로그인이 필요합니다.")

}
</script>
	<div id="wrap">
		<div id="header">

			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="contents">
			<div id="aside">
				<h2 class="tit_cs_linkCustomerCenterMain">
					<a class="service_a" href="customer_service.jsp" spcid="MYCJ____left__csct__">고객센터</a>
					<strong class="blind">메뉴</strong>
				</h2>
				<div class="cs_snb">
					<ul class="list_snb">
						<li><strong class="tit_sub">자주하는 질문</strong>
							<ul class="list_snb_sub">
								<li class="_cat05" data-cat="05"><a
									href="customer1_shipping.jsp" class="service_a2"
									spcid="CUST____main__topq__">배송</a></li>
								<li class="_cat02" data-cat="02"><a
									href="customer2_order.jsp" class="service_a2"
									spcid="CUST____main__topq__">주문/결제</a></li>
								<li class="_cat06" data-cat="06"><a
									href="customer3_return.jsp" class="service_a2"
									spcid="CUST____main__topq__">반품/교환/환불</a></li>
								<li class="_cat01" data-cat="01"><a
									href="customer4_member.jsp" class="service_a2"
									spcid="CUST____main__topq__">회원</a></li>
								<li class="_cat09" data-cat="09"><a
									href="customer5_goods.jsp" class="service_a2"
									spcid="CUST____main__topq__">상품</a></li>
								<li class="_cat10" data-cat="10"><a
									href="customer6_etc.jsp" class="service_a2"
									spcid="CUST____main__topq__">기타</a></li>
							</ul></li>
						<li><strong class="tit_sub">고객활동</strong>
							<ul class="list_snb_sub">
								<li><a href="customer7_1by1.so" class="service_a2"
									spcid="CUST____main__board__">고객센터 문의하기</a></li>
								<li><c:choose>
									<c:when test="${empty sessionScope.login_Name}">
										<a href="mainLoginPage.jsp" class="service_a2"
											spcid="CUST____main__board__" onclick="loginNeeded();">나의 문의 내역</a>
									</c:when>
									<c:otherwise>
										<a href="myqna_view.so" class="service_a2"
											spcid="CUST____main__board__" >나의 문의 내역</a>
									</c:otherwise>
								</c:choose></li>

							</ul></li>
						<li>
							<!-- <strong class="tit_sub">개인정보</strong>
                    <ul class="list_snb_sub">
                        <li>
                            <a href="#" class="service_a2">개인정보 이용내역</a>
                        </li>
                    </ul> -->
						</li>
					</ul>
					<!-- <div class="cs_bnr">
                <span class="link_bnr1"><strong>070-7947-7090~2</strong>수화상담 고객센터</span>
                <span class="link_bnr2"><strong>1644-2525(유료)</strong>CJmall 고객센터 <em>월~금 8:30~20:00<br>(토/일/공휴일 휴무)</em></span>
            </div>-->
				</div>
			</div>
			<div id="content">
				<h2 class="sub_title">자주하는 질문</h2>
				<!-- <form action="javascript:void(0);">
					<fieldset class="fld_search">
						<legend class="blind">검색폼</legend>
						<div class="box_search">
							<label class="blind">검색</label> <input type="text"
								class="tf_search" placeholder="검색어를 입력해 주세요.">
							<button type="button" class="btn_del" style="display: none">
								<span class="ic2_15">삭제</span>
							</button>
						</div>
					</fieldset>
				</form> -->
				<div class="cs_board">
					<h3 class="blind">자주하는 질문</h3>
					<ul class="list_board_sort">
						<li class="_cat5" data-cat="05"><a
							href="customer1_shipping.jsp"
							class="link_tab _faqCategory" spcid="CUST____frqna__topic__"
							onclick="openPage(event, '1')">배송</a>
						</li>
						<li class="_cat02" data-cat="02"><a
							href="customer2_order.jsp" class="link_tab _faqCategory"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '2')">주문/결제</a></li>
						<li class="_cat06" data-cat="06"><a
							href="customer3_return.jsp"
							class="link_tab _faqCategory" spcid="CUST____frqna__topic__"
							onclick="openPage(event, '3')">반품/교환/환불</a>
						</li>
						<li class="_cat01" data-cat="01"><a
							href="customer4_member.jsp"
							class="link_tab _faqCategory" spcid="CUST____frqna__topic__"
							onclick="openPage(event, '4')">회원</a>
						</li>
						<li class="_cat09" data-cat="09"><a
							href="customer5_goods.jsp" class="link_tab _faqCategory"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '5')">상품</a>
						</li>
						<li class="_cat10 on" data-cat="10"><a
							href="customer6_etc.jsp" class="link_tab _faqCategory"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '6')">기타</a>
						</li>
					</ul>
					<div class="_faqListTemplateContainer">
						<!-- 검색어가 있을경우 -->

						<!-- 검색어가 없을 경우 -->
						<div class="faq_keyword">
							<span class="txt_keyword">방송편성문의</span>
						</div>
						<ul class="list_board">
							
							<!-- <li class="_faqTitle" data-bbsno="55"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">방송알림은 어떻게 신청하나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<div style="text-align: center;">
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0826_cs_notifications.jpg">
										<br> <br> <a class="btn_cs_default"
											href="https://base.cjmall.com/p/myzone/broadcastNotifier"
											target="_self">방송알림 바로가기 </a>&nbsp;
									</div>
									<div style="text-align: center;">
										<a class="btn_cs_default"
											href="http://display.cjmall.com/p/tv/tvSchedule?broadType=live"
											target="_self">편성표 바로가기 PC바로가기 </a>&nbsp;
									</div>
									<div style="text-align: center;">
										<a class="btn_cs_default"
											href="http://display.cjmall.com/m/tv/tvSchedule?broadType=live"
											target="_self">편성표 바로가기 모바일 바로가기 </a>&nbsp;
									</div>
									<br> <br>
								</div></li> -->

							<li class="_faqTitle" data-bbsno="63"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">지난 방송도 볼 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									방송 이후 상품 섬네일 이미지에 재생버튼(▷)이 있는 상품 상세페이지에 들어가시면 VOD 시청이 가능합니다.<br>
									지난 방송 상품 일부는 VOD 제공이 제한됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="270"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">방송알림 신청하였으나 문자가 오지 않습니다.</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">방송알림은 재방송일 경우 알리미가 전송되지 않으며 
									상품 정보와 쇼핑뉴스 수신에 동의 하신 경우에만 전송됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="269"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">원하는 상품의 다음 방송 시간을 알고 싶어요</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									편성표에서는 오늘을 기준으로 5일전, 5일후 총 11일 동안의 편성 상품을 확인하실 수 있습니다.<br>
									오늘 이후 3주간 방송 예정인 상품은 상품 상세페이지 내에서방송 예정 일자를 확인하실 수 있습니다.
									<!-- [방송알림신청]을 통해 방송 전 미리 안내받을 수 있습니다.<br> 방송알림은 CJmall &gt;
									TV쇼핑 &gt; [방송알림] , 상품 상세 설명 페이지, TV편성표에서 신청이 가능합니다.<br> <br>
									<a href="https://base.cjmall.com/p/myzone/broadcastNotifier"
										target="_self"><font color="red">[방송알림 PC 바로가기]</font></a><br>
									<a href="https://base.cjmall.com/m/myzone/broadcastNotifier"
										target="_self"><font color="red">[방송알림 모바일 바로가기]</font></a><br>
									<br> <a
										href="http://display.cjmall.com/p/tv/tvSchedule?broadType=live"
										target="_self"><font color="red">[편성표 PC 바로가기]</font></a><br>
									<a
										href="http://display.cjmall.com/m/tv/tvSchedule?broadType=live"
										target="_self"><font color="red">[편성표 모바일 바로가기]</font></a> -->
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">이메일</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="64"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">편성표를 이메일로 받아볼 수 있나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									쇼핑라이브 편성정보를 [편성표 메일로 받기] 신청을 통해
									이메일로 안내 받으실 수 있습니다.<br> <br> 단, 이메일 수신에 동의 하신 경우에만
									전송됩니다.<br> <br> 
								</div></li>
						</ul>
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