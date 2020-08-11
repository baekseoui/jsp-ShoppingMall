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
						<li class="_cat06 on" data-cat="06"><a
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
					<div class="_faqListTemplateContainer">
						<!-- 검색어가 있을경우 -->

						<!-- 검색어가 없을 경우 -->
						<div class="faq_keyword">
							<span class="txt_keyword">반품</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="84"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품
										신청은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									반품 신청은 고객센터 문의하기를 통하여 신청하시거나,<br> 
									혹은 고객센터(1644-0000)에 연락을 주시면 빠른 처리 해드리겠습니다<br>
								
									<br>
								</div></li>
							<li class="_faqTitle" data-bbsno="91"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품
										시 별도 택배비가 부과되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1. 반품 택배비가 무료인 경우<br> - 수령한 상품이 파손/불량이거나 상품이 잘못배송된 경우<br>
									<br> 2. 반품 택배비가 고객 부담인 경우<br> - 구입합 상품 상세설명의 교환/반품정보에
									배송비 고객부담이라고 표기되어 있는 상품 중 고객변심에 의한 반품을 요청하는 경우<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="89"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">택배비
										결제는 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									환불 비용에서 차감하고 카드 취소 또는 현금환불 해 드립니다.<br> 단, 현금으로 반품택배비를 입금한
									경우 택배비 입금 확인 후 회수가 진행 되므로 회수지연 등의 문제가 발생할 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="87"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품
										신청했는데 상품 회수는 언제하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">일반적으로 반품접수 후 주말,공휴일제외하고 1-2일 또는 3-4일
									이내에 회수 방문합니다.</div></li>
							<li class="_faqTitle" data-bbsno="90"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품후
										사용했던 할인쿠폰 재사용 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									단순변심에 의한 제품 반품 시 할인쿠폰 재사용이 불가합니다. 단, 재고부족이나 제품하자로인한 반품 시 할인쿠폰을
									재부여 해 드립니다.<br> 당사 고객센터 (1644-0000)로 문의 해 주세요.
								</div></li>
							<li class="_faqTitle" data-bbsno="88"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품
										신청했는데, 그냥 사용하고 싶어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">당사 고객센터(1644-0000)로 연락주시면 반품철회
									도와드리겠습니다</div></li>
							<li class="_faqTitle" data-bbsno="86"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품접수를
										하지않고 상품 직접 보내도되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									반품접수를 하지 않고 상품을 직접 보내시는 경우 당사 또는 협력사에서 회수 확인이 지연될 수 있습니다.<br>
									먼저 상품을 보내신 경우 당사 고객센터(1644-0000)로 연락주시면 회수 처리 될 수 있도록 도와드리겠습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="85"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품상품
										수거 후 반품운송장을 보관해야하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									반품 시 받은 운송장은 혹시라도 발생될 수 있는 상품 분실을 대비하여 보관해 주시는 것이 좋습니다.<br>
									정상적인 수거 확인이 되지 않는 경우는 수거된 상품의 위치를 파악하는 데 중요한 정보가 됩니다.<br>
									&nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="92"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회수지
										주소를 바꾸고 싶어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									 고객센터(1644-0000)로 전화 주시면<br> 회수지 주소 변경을 도와 드리겠습니다.<br>
									<br> 
								
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">교환</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="79"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">교환시
										별도 택배비가 부과되나요??</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1. 교환 택배비가 무료인 경우<br> - 수령한 상품이 파손/불량이거나 상품이 잘못배송된 경우<br>
									<br> 2. 교환 택배비가 고객 부담인 경우<br> - 구입합 상품 상세설명의 교환/반품정보에
									배송비 고객부담이라고 표기되어 있는 상품 중<br> 고객변심에 의한 교환을 요청하는 경우
								</div></li>
							<li class="_faqTitle" data-bbsno="76"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">교환
										신청은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									배송이 완료된 상품 중 7일 이내의 상품은 [로그인] &gt; [마이존] &gt; [고객센터]
									&gt; 고객센터 문의하기를 통하여 가능 하십니다.<br> 배송이 완료된 후 7일이 지났거나,
									신청이 불가한 경우 청약철회기간 이내에 당사 고객센터(1644-0000)로 연락주시면 교환/반품
									신청이 가능합니다.<br> 
									
								</div></li>
							<li class="_faqTitle" data-bbsno="83"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">어떤
										경우에 상품 교환/반품이 안되는 건가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									전자상거래 등에서의 소비자보호에 관한 법률 제17조 (청약철회 등) 에 의거 상품의 교환/반품이 불가능한 경우는<br>
									1. 상품 판매 시 고지한 교환/반품 기간이 경과한 경우<br> (단, 상품의 하자 및 오배송 등으로
									인한 경우에는 공급 받은 날로부터 3개월이내,<br> 그 사실을 알게 된 날 또는 알 수 있었던 날로부터
									30일이내까지 가능)<br> 2. 소비자에게 책임이 있는 사유로 상품이 멸실되거나 훼손된 경우<br>
									3. 소비자의 사용 또는 일부 소비로 재화 등의 가치가 현저히 감소한 경우<br> 4. 시간이 지나 다시
									판매하기 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우<br> 5. 복제가 가능한 재화 등의 포장을
									훼손한 경우<br> 6. 소비자의 주문에 따라 개별적으로 생산되는 상품으로서 사전에 해당 사실을 고지하고
									소비자의 동의를 받은 경우
								</div></li>
							<li class="_faqTitle" data-bbsno="77"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">맞교환과
										선회수는 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									- 맞교환 : 상품배송과 동시에 상품을 회수하는 경우<br> <br> - 선회수 후 교환 :
									당사 또는 협력사로 제품을 회수한 후 제품 이상 유무를 확인하여 교환상품을 배송하는 경우
								</div></li>
							<li class="_faqTitle" data-bbsno="78"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">교환기간은
										얼마나 소요되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									- 맞교환 : 약 3-4일 소요 (주말 및 공휴일 제외)<br> - 선회수 입고 확인 (제품점검) 후
									교환 : 약 7-10일 소요 (주말 및 공휴일 제외)<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="81"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">교환
										상품은 받았는데 회수해 가지 않네요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									당사 고객센터(1644-0000)로 전화 주시거나,<br>고객센터 문의하기를 통하여<br>
									빠르게 상품이 회수될 수 있도록 하겠습니다. 
								</div></li>
							<li class="_faqTitle" data-bbsno="82"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">교환기간은
										얼마나 소요되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									맞교환일 경우는 약 3~4일정도(주말및 공휴일 제외) 소요되며,<br> 선회수 입고 확인 후(제품점검)
									교환품&nbsp; 발송될 경우는 약 7~10일정도 소요됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="80"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">교환
										받을 주소지를 변경할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">교환 받을 상품의 출고 이전까지 당사 고객센터 1644-0000
									로 연락주시면 배송지 변경이 가능합니다.</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">취소</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="93"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문을
										취소하고 싶어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									배송 시작 이전에는 취소를 신청할 수 있습니다.<br>
									[로그인] > [마이존] > 고객센터 문의하기를 통하여 문의를 주시면 신속하게<br>
									처리 해드리겠습니다.
									
								</div></li>
							<li class="_faqTitle" data-bbsno="96"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제수단
										변경하려면 주문취소하고 재주문하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품을 취소하지 않고도 다른 결제수단으로 결제 변경이 가능합니다.<br> -&nbsp;
									[로그인] &gt; [마이존] &gt; [주문/배송 조회] &gt; [결제변경]<br> :
									당일 주문 건에 한하여 23시30분까지 신용카드로 결제변경이 가능합니다.<br> <br> -
									신용카드 외 다른 결제수단으로 변경을 원하는 경우<br> : 당사 고객센터(1644-0000)로
									연락주시면 결제변경 도와드리겠습니다.<br> <br> 
								</div></li>
							<li class="_faqTitle" data-bbsno="94"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">취소
										신청 했는데 배송이 왔어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									취소한 내역을 확인하지 못하고 출고되는 경우가 있습니다.<br> 이미 취소한 상품이므로 택배기사님 연락
									시 “수취거부” 해 주시면 됩니다.<br> 만약 상품을 인수하셨다면&nbsp; 당사
									고객센터(1644-0000)로 전화 주시거나,<br> 문의를 주시면 상품 회수 도와드리겠습니다.<br>
									<br> 
								</div></li>
							<li class="_faqTitle" data-bbsno="95"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">쇼핑몰에서
										취소가 안되는데 왜 그런가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품 특성에 따라 주문취소가 안 되는 경우가 있습니다.<br> - 주문제작상품, 설치배송 상품은 당일
									이후 주문취소 불가
								</div></li>
							<li class="_faqTitle" data-bbsno="97"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문취소
										했는데 카드 결제 취소는 언제되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									카드 승인 후 당일 취소 :&nbsp; 당일 승인 취소가 처리<br> 당일 이후 취소 시 : 약
									2-3일(주말 및 공휴일 제외) 소요<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="98"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">취소
										후 배송이 왔는데 그냥 사용하고 싶어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									취소 신청 후 카드취소 또는 현금환불이 진행된 상태이므로 당사 고객센터(1644-0000)로 연락주시면 재결제
									진행 도와드리겠습니다.<br> &nbsp;
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">A/S</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="74"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">A/S시
										수선비용와 택배비는 누가 부담하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품불량인 경우 수선비, 택배비는 무료입니다.<br> (단, 해당상품의 품질보증기간 이내이며 상품별로
									다름)<br> <br> 고객님의 변심이나 과실에 의한 A/S는 품질보증기간에 관계없이 모두
									고객님 부담으로 진행됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="73"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">A/S접수는
										어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1.&nbsp;구입하신 상품의 고객센터로 상담 요청<br> 2.&nbsp;구입하신 상품의 고객센터가 없는
									경우 당사 고객센터로 전화 주시거나, <br> 문의를 통하여 연락을 주시면 <br>
									신속하게 처리 해드리겠습니다.
									 <br> <a
										href="customer7_1by1.jsp"
										target="_self"><font color="red">1:1문의작성  바로가기</font></a><br>
									
								</div></li>
						
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">회수</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="104"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품접수한지
										5일지났는데 회수하러 오지않아요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">당사 고객센터( ☎1644-0000)로 연락 주시기 바랍니다.
									해당 택배사에 다시 신속한 회수를&nbsp; 요청하여 2~3일이내 연락 후 회수방문이 가능하도록 조치해
									드리겠습니다.</div></li>
							<li class="_faqTitle" data-bbsno="107"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">오늘
										반품접수했는데 회수하러 언제 오나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">반품접수후 3~4일이내(주말 및 공휴일 제외) 택배기사가 사전연락
									후 방문, 회수합니다.</div></li>
							<li class="_faqTitle" data-bbsno="105"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품할
										상품을 직접 보내도 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">협력사로 직접 반송한 경우 당사 고객센터에 연락하여 택배사,
									운송장번호, 반송일을 알려 주시기 바랍니다.</div></li>
							<li class="_faqTitle" data-bbsno="108"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회수해갔는데
										택배사에서 회수한다고 연락이와요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">회수된 상품의 실제 회수와 택배 시스템의 불일치로 인해 맞지 않는
									경우도 있음을 양해바라며. 계속해서 연락이 오는 경우 당사 고객센터(1644-0000)로 연락주시면 신속하게
									처리해드리겠습니다.</div></li>
							<li class="_faqTitle" data-bbsno="106"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품
										회수 주소를 변경 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									예, 가능합니다만 [1:1문의작성] 또는 고객센터(☎1644-0000)에 고객님께서 원하시는 주소로 회수방문지를
									변경해 주셔야 합니다.<br> <br> <a
										href="customer7_1by1.jsp"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">환불</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="102"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문
										취소 했는데 환불은 어제 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									환불 현황은, [마이존] → [취소/교환/반품 조회]에서 확인하실 수 있습니다.<br> <br>
									주문하신 상품의 취소/반품이 완료된 이후 환불이 진행됩니다.<br> 결제수단별 환불시점 및 환불방법은
									아래와 같습니다.<br> <br> [환불방법/시점]<br> <br> 
									신용카드 : 카드 승인 취소 후 3~4일(휴일제외)이내 카드사 확인가능.<br>
									&nbsp;&nbsp;&nbsp; (체크카드의 경우 최대 7일 소요)<br>  현금(무통장/계좌이체)
									: 현금환불 접수 후 1~2일 내 입금 확인 가능.(영업일 기준)<br>  간편결제 :
									간편결제사별 정책 기준에 따름.<br>  휴대폰결제 : 당월 승인 후 당월 취소 시 휴대폰결제 승인
									취소되며, 당월 승인 후 익월 취소 시 현금 환불 진행.(고객센터 환불진행 시 환불시점 및 환불주체는 상이할
									수있음)<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="100"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">취소후
										반품했는데 청구서에 카드금액 청구됐어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									카드 취소 청구 후 결제일 4-5일 이전 취소 청구가 된 경우 청구서에 표기 되더라도 인출이 되지 않으니,<br>
									결제일에 카드사로 다시 한 번 확인해 주시길 바랍니다.<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="103"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">체크카드로
										결제 했는데 환불은 언제되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">체크카드인 경우 당사 취소 청구 후 7일 이내 카드사에서 고객님의
									통장으로 환불 됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="101"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">신용카드
										결제 후 취소는 언제 확인 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									카드 승인 후 당일 취소 시 : 즉시 승인 취소<br> 카드 승인 후 익일 취소 시 : 약2-3일 소요됨
								</div></li>
							<li class="_faqTitle" data-bbsno="99"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장or계좌이체로
										결제했는데 환불언제되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									오후 1시 이전 취소 접수 : 당일 오후 2시 이후 환불 가능<br> 오후 1시 이후 취소 접수 : 익일
									환불 가능<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="607791"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">휴대폰결제
										취소/환불은 언제되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									같은 달 결제취소인경우 휴대폰 청구금액에 포함되지 않으나<br> 다음달에 취소될 경우에는 결제사에서
									환불이 진행됩니다.<br> <br> 1. 다날<br> 전주 화요일 13:00:00 ~
									전주 금요일 12:59:59 ▶ 월요일 환불<br> 전주 금요일 13:00:00 ~ 금주 화요일
									12:59:59 ▶ 수요일 환불<br> <br> 2. 모빌리언스<br> 전주 수요일
									00:00:00 ~ 금 주 화요일 23:59:59 ▶ 목요일 환불
								</div></li>
								
								<!--기프티콘 환불 상의필요  -->
							<!-- <li class="_faqTitle" data-bbsno="607792"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">기프티콘
										환불 방법을 알려주세요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									기프티콘의 종류에 따라 환불 기준이 상이할 수 있습니다. 기프티콘 사용문의, 재발송, 기간연장의 경우 상품
									상세페이지 발송처 고객센터를 통해 요청하시면 신속하게 처리 받으실 수 있습니다.<br> 자세한 사항은
									해당 상품 상세 페이지의 발송처 고객센터 정보를 참고하시기 바랍니다.<br> <br> *
									기프티콘 고객센터 : 02-6323-9129<br> * 기프티쇼 고객센터 : 1588-6474
								</div></li> -->
							<li class="_faqTitle" data-bbsno="607793"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장입금
										환불 계좌 인증이 되지 않습니다.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									환불 계좌 인증 시, 은행명/예금주/계좌번호가 모두 일치해야 계좌 인증이 가능합니다.<br> 이 중
									하나라도 잘못 기재했을 경우 인증이 되지 않을 수 있습니다.<br> <br> 지속적인 에러
									발생시 당사 고객센터로 문의 바랍니다.<br> (고객센터: 02-2626-0000)
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