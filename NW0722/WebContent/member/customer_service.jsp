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
								<li>
								<c:choose>
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
						<!-- <li>
                    <strong class="tit_sub">개인정보</strong>
                    <ul class="list_snb_sub">
                        <li>
                            <a href="#" class="service_a2">개인정보 이용내역</a>
                        </li>
                    </ul>
                </li> -->
					</ul>
					<!-- <div class="cs_bnr">
                <span class="link_bnr1"><strong>070-7947-7090~2</strong>수화상담 고객센터</span>
                <span class="link_bnr2"><strong>1644-2525(유료)</strong>CJmall 고객센터 <em>월~금 8:30~20:00<br>(토/일/공휴일 휴무)</em></span>
            </div>-->
				</div>
			</div>
			<div id="content">
				<div class="customer_service_con_main">
					<h2 class="blind">고객센터 메인</h2>
					<!-- <fieldset class="fld_search">
						<legend class="blind">검색폼</legend>
						<div class="box_search">
							<label class="blind">검색</label> <input type="text"
								class="tf_search" placeholder="검색어를 입력해 주세요.">
							<button type="button" class="btn_del_deleteQuery"
								style="display: none;">
								<span class="ic2_15">삭제</span>
							</button>
						</div>
					</fieldset> -->
					<div class="cs_board_customercenterFAQ">
						<h3 class="tit_board">자주하는 질문 TOP10</h3>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="1"><a href="#"
								class="link_cont_faqContents" id="link_cont_view"> <span class="num">1</span> <strong
									class="tit_cont">반품 신청은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									반품 신청은 고객센터 문의하기를 통하여 신청하시거나,<br> 
									혹은고객센터(☎ 1644-0000)에 연락을 주시면 빠른 처리 해드리겠습니다<br>

								</div></li>
							<li class="_faqTitle" data-bbsno="2"><a href="#"
								class="link_cont_faqContents"> <span class="num">2</span> <strong
									class="tit_cont">주문을 취소하고 싶어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									배송 시작 이전에는 취소를 신청할 수 있습니다.<br>
									[로그인] > [마이존] > 고객센터 문의하기를 통하여 문의를 주시면 신속하게<br>
									처리 해드리겠습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="3"><a href="#"
								class="link_cont_faqContents"> <span class="num">3</span> <strong
									class="tit_cont">상품평은 어떻게 작성하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									해당 상품의 상세 페이지에서 <br>
									상품평 작성을 통하여 작성 하실수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="4"><a href="#"
								class="link_cont_faqContents"> <span class="num">4</span> <strong
									class="tit_cont">배송된 상품과 상품설명이 달라요</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님께 불편을 드려 죄송합니다. 해당상품 포장, 배송하는 과정에서 발생된 문제일 가능성이 있습니다. 번거롭더라도
									[고객센터] &gt; [1:1 문의작성] 또는 고객센터(☎ 1644-0000)로 문의해 주시기 바랍니다.<br>
									<br> <a
										href="customer7_1by1.jsp"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
								</div></li>
							<li class="_faqTitle" data-bbsno="5"><a href="#"
								class="link_cont_faqContents"> <span class="num">5</span> <strong
									class="tit_cont">반품 시 별도 택배비가 부과되나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1. 반품 택배비가 무료인 경우<br> - 수령한 상품이 파손/불량이거나 상품이 잘못배송된 경우<br>
									<br> 2. 반품 택배비가 고객 부담인 경우<br> - 구입합 상품 상세설명의 교환/반품정보에
									배송비 고객부담이라고 표기되어 있는 상품 중 고객변심에 의한 반품을 요청하는 경우<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="120"><a href="#"
								class="link_cont_faqContents"> <span class="num">6</span> <strong
									class="tit_cont">배송지를 변경 할 수 있나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									&nbsp;고객센터 1:1 문의를 통하여 가능 하시며, <br>
									&nbsp;혹은 고객센터(☎ 1644-0000)에 전화를 하시면  빠른 변경 해드리겠습니다. 
								</div></li>
							<li class="_faqTitle" data-bbsno="7"><a href="#"
								class="link_cont_faqContents"> <span class="num">7</span> <strong
									class="tit_cont">택배비 결제는 어떻게 하나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									환불 비용에서 차감하고 카드 취소 또는 현금환불 해 드립니다.<br> 단, 현금으로 반품택배비를 입금한
									경우 택배비 입금 확인 후 회수가 진행 되므로 회수지연 등의 문제가 발생할 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="8"><a href="#"
								class="link_cont_faqContents"> <span class="num">8</span> <strong
									class="tit_cont">회원 탈퇴는 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									로그인 후 마이존&gt; [회원 탈퇴] 메뉴를 통해 고객님께서 직접 처리할 수 있습니다.<br>
								</div></li>
							<li class="_faqTitle" data-bbsno="9"><a href="#"
								class="link_cont_faqContents"> <span class="num">9</span> <strong
									class="tit_cont">반품 신청했는데 상품 회수는 언제하나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">일반적으로 반품접수 후 주말,공휴일제외하고 1-2일 또는 3-4일
									이내에 회수 방문합니다.</div></li>
							<li class="_faqTitle" data-bbsno="607785"><a href="#"
								class="link_cont_faqContents"> <span class="num">10</span> <strong
									class="tit_cont">회원탈퇴가 되지 않는 경우 어떻게 하나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문하신 상품이 배송진행 중이거나 반품처리 등이 완료되지 않은 경우에는 탈퇴 처리가 불가하며,<br>
									예치금, 상품권의 잔액이 남아있는 경우에는 잔액을 회원 본인 명의 계좌로 환불받으신 후 탈퇴처리가 가능합니다.<br>
									탈퇴 후 재가입은 가능하나 기존 아이디로 가입은 불가능할 수 있습니다.<br> <br> 자세한
									사항은 고객센터 [1:1문의작성] 또는 고객센터(1644-0000)로 문의주십시오.<br>
								</div></li>
						</ul>
						<!-- 전체보기 -->
						<a href="customer1_shipping.jsp" class="link_more"> 전체보기 <span class="ic3_07">바로가기</span>
						</a>
					</div>
					<!-- <div class="cs_board_customercenterNotice">
            <h3 class="tit_board">공지사항</h3>
                 <a href="https://base.cjmall.com/p/customercenter/noticeList" class="link_more"  
                        spcid="CUST____main__noti__">전체보기
                        <span class="ic3_07" spcid="CUST____main__noti__">바로가기</span>
                 </a>
           </div> -->
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../section/footerMain.jsp" />

		</div>
	</div>
</body>
</html>