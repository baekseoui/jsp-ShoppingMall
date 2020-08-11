<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/customer_service_con.css">
<link rel="stylesheet" href="../css/inquiry_question.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../jquery/customer_service_con.js"></script>
<script src="../jquery/inquiry_con.js"></script>

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
						<li>
							<!--     <strong class="tit_sub">개인정보</strong>
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
						<li class="_cat5 on" data-cat="05"><a
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
						<li class="_cat10" data-cat="10"><a
							href="customer6_etc.jsp" class="link_tab _faqCategory"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '6')">기타</a>
						</li>
					</ul>
					<div class="_faqListTemplateContainer" id='1'>
						<!--검색어가 있을경우-->
						<!--검색어가 없을 경우-->
						<div class="faq_keyword">
							<span class="txt_keyword">배송 일정</span>
						</div>

						<!-- 배송 일정 -->
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="111">
							<a href="#none"class="link_cont link_cont _faqContents"> <strong
									class="tit_cont2">배송기간은 얼마나 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품의 평균 배송일은 3~4일(주말,공휴일 제외) 정도 소요되며 설치 및 제작 상품의 경우 10~15일정도<br>
									(주말,공휴일 제외)
									소요됩니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
									자세한 배송일자는 상품 상세 페이지에서 확인이
									가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br> 대형가전,
									가구, 컴퓨터 등 설치 및 주문제작 상품의 경우 7~15일 정도(주말및 공휴일 제외) 소요 될 수 있습니다.<br>
									보다 정확한 일정 확인은 [1:1문의작성] 또는 고객센터(☎1644-0000)로 문의 바랍니다. <br>
									<br> <a
										href="customer7_1by1.jsp"
										target="_self"> <font color="red">1:1문의작성  바로가기</font>
									</a> 
								</div></li>
							<li class="_faqTitle" data-bbsno="113"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송조회는
										어디서 확인 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									[로그인] &gt; [마이존] &gt; [주문/배송 조회] &gt; [배송 조회]를 선택하면 상세한
									배송 상황을 확인할 수 있습니다.<br> <br> <br>
									
								</div></li>
							
							<li class="_faqTitle" data-bbsno="115"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">여러개
										상품을 주문했는데 배송이 따로 오나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품에 따라 물류센터 또는 공급업체를 통해 배송진행 하고 있습니다.<br> <br>
									배송을 위한 출발지가 다른 경우는 함께 주문하신 경우라도 따로 배송될 수 있으며,<br> <br>
									동일한 출발지인 경우도 택배사 이동시기에 따라 배송 도착일자가 다를 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="109"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">문자(SMS)로
										배송 정보를 알 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									결제완료 후 주문 상품의 배송 예정일은 고객님의 핸드폰으로 즉시 SMS 전송됩니다.<br>
									단, 개인정보 마케팅 수신 여부란의 핸드폰 SMS 수신 동의를 한 경우에만 문자 수신이 가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="110"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">미리주문
										상품 배송은 언제 오는건가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">TV방송 예정인 상품을 미리주문하는 경우 TV 생방송 배송
									예정일에 맞춰 동일하게 배송됩니다.</div></li>
						</ul>
						<!-- 배송비 -->
						<div class="faq_keyword">
							<span class="txt_keyword">배송비</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="116"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무료배송이었는데
										복수배송지 설정하니까 유료배송으로 바뀌었어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">복수배송 주문을 하실 때 배송지를 나눠 보내시는 과정에서 무료배송
									조건을 만족하지 못하는 경우가 있습니다. 예를 들어 2개를 사면 무료배송인 상품인데 복수배송을 적용하는 경우
									배송비가 각각 발생됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="119"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송없음
										상품은 배송을 안한다는 뜻인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">배송없음으로 배송정보가 설정된 상품은 모바일로 전송되는 경우이거나
									현장에서 확인을 하는 형태의 상품입니다. 이 경우 별도로 실물상품이 배송되지 않습니다.</div></li>
							<li class="_faqTitle" data-bbsno="118"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">착불은
										배송비가 얼마라는 이야기 인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									일부 상품에 대해 착불로 배송정보가 설정된 경우가 있는데 실제 배송을 받으실때 배송기사님께 배송비를 지불한다는
									의미입니다.<br> 상품의 상품기술서를 보시면 자세히 안내가 되어있을 것 입니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="117"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">도서산간
										배송비가 추가되는데 왜 그런가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품마다 도서산간 배송비가 별도로 부과되는 경우가 있습니다.<br> 고객님께서 선택하신 배송지에 따라
									추가배송비가 부과되는 경우, 주문서에서 추가배송비 금액을 확인하실 수 있습니다.
								</div></li>
						</ul>
						<!-- 배송지 변경 -->
						<div class="faq_keyword">
							<span class="txt_keyword">배송지변경</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="120"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송지를
										변경 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
										&nbsp;고객센터 1:1 문의를 통하여 가능 하오니 <br>
										&nbsp;고객센터 1:1 문의를 통하여 알려주시면 빠른 변경 해드리겠습니다. 
									<br> 
								</div></li>
							<li class="_faqTitle" data-bbsno="121"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">
										여러개 상품 한번에 결제했는데, 몇개만 다른곳으로 배송지변경 되나요? </strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									몇 개만 다른 곳으로 배송지 변경이 불가능 합니다.<br>
									만약 이미 주문을 하셨더라면 1:1문의를 통하여 알려주시거나 혹은<br>
									고객센터로(☎1644-0000) 문의해 주세요.<br> <br>
									
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">사은품 배송</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="122"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">본상품은
										받았는데 사은품은 언제 배송되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">사은품은 본품과 별도로 배송되며 본상품 인수 후 일주일 이내
									택배로 배송됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="123"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품평이벤트
										당첨시 사은품어디로 배송되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님의 기본상세 기본정보 주소지로 배송됩니다.<br> <br> 혹,인수자와 주문자가 상이할
									경우는 인수처로 배송되지 않으니, 개인정보 주소지를 반드시 변경해 주시기 바랍니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="124"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">이벤트상품인데
										선착순 사은품 언제와요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									행사종료 후 일괄적으로 배송이 되며 이벤트 내용마다 달라질 수 있으니<br> 이벤트 내용을 확인해 주시기
									바랍니다.
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">상품수령확인</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="125"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한상품
										못받았는데 배송완료로 나와요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									구입한 상품의 실제 배송과 택배 시스템의 불일치로 인해 맞지 않는 경우도 있음을 양해바라며<br> <br>
									당사 고객센터로(☎1644-0000) 연락주시면 신속하게 확인하고 처리해 드리겠습니다.<br> <br>
									고객님과 연락이 닿지 않아 상품이 경비실등에 위탁 배송된 경우입니다. 위탁배송이 되는 경우<br> <br>
									해당 택배 기사는 고객님께 SMS등으로 정보를 고지하게 되어 있습니다.<br> <br> 상품
									인수에 문제가 있는 경우 당사 고객센터로(☎1644-0000) 문의하시기 바랍니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="126"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한상품아니고
										다른상품이 배송됐어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품의 출고 오류로 인한 것이며 이 경우 당사 고객센터로 연락주시면 신속하게 처리 해 드리겠습니다.<br>
									[1:1문의작성] 또는 고객센터로(☎1644-0000) 문의해 주세요.<br> <br> 
									<a href="customer7_1by1.jsp"	target="_self">
									<font color="red">1:1문의작성바로가기</font></a><br>
									
								</div>
							</li>
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