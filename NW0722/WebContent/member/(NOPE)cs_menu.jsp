<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div id="wrap">
		<div id="header">

			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="contents">
			<div id="aside">
				<h2 class="tit_cs_linkCustomerCenterMain">
					<a class="service_a" href="#" spcid="MYCJ____left__csct__">고객센터</a>
					<strong class="blind">메뉴</strong>
				</h2>
				<div class="cs_snb">
					<ul class="list_snb">
						<li><strong class="tit_sub">자주하는 질문</strong>
							<ul class="list_snb_sub">
								<li class="_cat05" data-cat="05"><a
									href="#" class="service_a2" id="defaultOpen"
									onclick="openPage(event, '1')"
									spcid="CUST____main__topq__">배송</a></li>
								<li class="_cat02" data-cat="02"><a
									href="#" class="service_a2"
									onclick="openPage(event, '2')"
									spcid="CUST____main__topq__">주문/결제</a></li>
								<li class="_cat06" data-cat="06"><a
									href="#" class="service_a2"
									onclick="openPage(event, '3')"
									spcid="CUST____main__topq__">반품/교환/환불</a></li>
								<li class="_cat01" data-cat="01"><a
									href="#" class="service_a2"
									onclick="openPage(event, '4')"
									spcid="CUST____main__topq__">회원</a></li>
								<li class="_cat09" data-cat="09"><a
									href="#" class="service_a2"
									onclick="openPage(event, '5')"
									spcid="CUST____main__topq__">상품</a></li>
								<li class="_cat10" data-cat="10"><a
									href="#" class="service_a2"
									onclick="openPage(event, '6')"
									spcid="CUST____main__topq__">기타</a></li>
							</ul></li>
						<li><strong class="tit_sub">고객활동</strong>
							<ul class="list_snb_sub">
								<li><a href="#" class="service_a2"
									spcid="CUST____main__board__">고객센터 문의하기</a></li>
								<li><a href="#" class="service_a2"
									spcid="CUST____main__board__">나의 문의 내역</a></li>

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
				<form action="javascript:void(0);">
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
				</form>
				<div class="cs_board">
					<h3 class="blind">자주하는 질문</h3>
					<ul class="list_board_sort">
						<li class="_cat5 on" data-cat="05"><a
							href="#"
							class="link_tab _faqCategory tablinks" spcid="CUST____frqna__topic__"
							onclick="openPage(event, '1')">배송</a>
						</li>
						<li class="_cat02" data-cat="02"><a
							href="#" 
							class="link_tab _faqCategory tablinks"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '2')">주문/결제</a></li>
						<li class="_cat06" data-cat="06"><a
							href="#"
							class="link_tab _faqCategory tablinks" spcid="CUST____frqna__topic__"
							onclick="openPage(event, '3')">반품/교환/환불</a>
						</li>
						<li class="_cat01" data-cat="01"><a
							href="#"
							class="link_tab _faqCategory tablinks" spcid="CUST____frqna__topic__"
							onclick="openPage(event, '4')">회원</a>
						</li>
						<li class="_cat09" data-cat="09"><a
							href="#" 
							class="link_tab _faqCategory tablinks"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '5')">상품</a>
						</li>
						<li class="_cat10" data-cat="10"><a
							href="#" 
							class="link_tab _faqCategory tablinks"
							spcid="CUST____frqna__topic__"
							onclick="openPage(event, '6')">기타</a>
						</li>
					</ul>
					<div class="_faqListTemplateContainer tabcontent" id='1'>
						<!--검색어가 있을경우-->
						<!--검색어가 없을 경우-->
						<div class="faq_keyword">
							<span class="txt_keyword">배송 일정</span>
						</div>

						<!-- 배송 일정 -->
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="111"><a href="#none"
								class="link_cont link_cont _faqContents"> <strong
									class="tit_cont2">배송기간은 얼마나 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품의 평균 배송일은 3~4일(주말,공휴일 제외) 정도 소요되며 설치 및 제작 상품의 경우 10~15일정도<br>
									(주말,공휴일 제외)
									소요됩니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
									자세한 배송일자는 상품 상세 페이지에서 확인이
									가능합니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br> 대형가전,
									가구, 컴퓨터 등 설치 및 주문제작 상품의 경우 7~15일 정도(주말및 공휴일 제외) 소요 될 수 있습니다.<br>
									보다 정확한 일정 확인은 [1:1문의작성] 또는 고객센터(☎1644-2525)로 문의 바랍니다. <br>
									<br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"> <font color="red">1:1문의작성 PC 바로가기</font>
									</a> <br> <a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"> <font color="red">1:1문의작성 모바일 바로가기</font>
									</a>
								</div></li>
							<li class="_faqTitle" data-bbsno="113"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송조회는
										어디서 확인 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									[CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회] &gt; [배송 조회]를 선택하면 상세한
									배송 상황을 확인할 수 있습니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="114"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원도
										배송확인 가능 한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">&nbsp;[CJmall로그인] &gt; [비회원/간편구매조회]
									&gt; [비회원 주문/배송조회]에서 주문번호와 비밀번호를 입력하여 정보를 확인할 수 있습니다.</div></li>
							<li class="_faqTitle" data-bbsno="115"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">여러개
										상품을 주문했는데 배송이 따로 오나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품에 따라 CJ오쇼핑 물류센터 또는 공급업체를 통해 배송진행 하고 있습니다.<br> <br>
									배송을 위한 출발지가 다른 경우는 함께 주문하신 경우라도 따로 배송될 수 있으며,<br> <br>
									동일한 출발지인 경우도 택배사 이동시기에 따라 배송 도착일자가 다를 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="109"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">문자(SMS)로
										배송 정보를 알 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJmall 결제완료 후 주문 상품의 배송 예정일은 고객님의 핸드폰으로 즉시 SMS 전송됩니다.<br>
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
									<div style="text-align: center;">
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0826_cs_address.jpg">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
											target="_self">주문/배송조회 바로가기 (PC) </a>
									</div>
									<div style="text-align: center;">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
											target="_self">주문/배송조회 바로가기 (모바일)</a>
									</div>
									<br> "&nbsp; "
								</div></li>
							<li class="_faqTitle" data-bbsno="121"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">
										여러개 상품 한번에 결제했는데, 몇개만 다른곳으로 배송지변경 되나요? </strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									몇 개만 다른 곳으로 배송지 변경이 불가능 합니다.<br> <br> <br> 한번
									주문으로 3개 이상의 상품을 구매하실 경우 배송지는 주문 시 최대 3곳까지 지정할 수 는 있습니다.<br>
									<br> <br> 3곳 이상의 배송시 지정을 원하시는 경우 별도로 재주문 해주시길 부탁드립니다.<br>
									[1:1문의작성] 또는 고객센터로(☎1644-2525) 문의해 주세요.<br> <br>
									1:1문의작성 PC 바로가기<br> 1:1문의작성 모바일 바로가기
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
									당사 고객센터로(☎1644-2525) 연락주시면 신속하게 확인하고 처리해 드리겠습니다.<br> <br>
									고객님과 연락이 닿지 않아 상품이 경비실등에 위탁 배송된 경우입니다. 위탁배송이 되는 경우<br> <br>
									해당 택배 기사는 고객님께 SMS등으로 정보를 고지하게 되어 있습니다.<br> <br> 상품
									인수에 문제가 있는 경우 당사 고객센터로(☎1644-2525) 문의하시기 바랍니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="126"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한상품아니고
										다른상품이 배송됐어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품의 출고 오류로 인한 것이며 이 경우 당사 고객센터로 연락주시면 신속하게 처리 해 드리겠습니다.<br>
									[1:1문의작성] 또는 고객센터로(☎1644-2525) 문의해 주세요.<br> <br> 
									<a href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"	target="_self">
									<font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"	target="_self">
									<font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div>
							</li>
						</ul>
					</div>
					
					<div class="_faqListTemplateContainer tabcontent" id='2'>
						<!--검색어가 있을경우-->
						<!--검색어가 없을 경우-->
						<div class="faq_keyword">
							<span class="txt_keyword">주문내역확인</span>
						</div>

						<!-- 주문내역확인 -->
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="145"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한
										상품 취소신청 어디서 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									[CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회] &gt; [주문취소] 신청 버튼 클릭
									(직접취소) 및 [1:1 채팅상담]을 선택하시면 항시 대기하고 있는<br> 채팅 상담원을 통해 변경하실
									수 있습니다.<br> <br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="141"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한
										상품옵션(사이즈/색상/결제변경/배송지등)변경하고싶어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									모바일에서 배송지와 주문 옵션 변경을 하실 수 있습니다.<br> <br> [CJmall로그인]
									&gt; [마이존] &gt; [주문/배송 조회] &gt; [옵션변경]/[결제변경]/[배송지변경]의 경로를 통해
									각각 신청이 가능합니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="144"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한상품
										"사이즈/색상/결제/배송지등" 변경</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품을 주문한 후 사이즈, 색상, 배송지등의 변경을 원할 경우 아래 방법으로 신청 및 확인이 가능합니다.<br>
									<br> <br> ● [CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회]
									&gt; [옵션변경]/[결제변경]/[배송지변경]을 통해 신청하실 수 있습니다.<br> ● 24시간
									운영되고 있는 고객센터 (☎1644-2525) 문의하시면 친절한 상담원을 통해 변경하실 수 있습니다.<br>
									<br> <br> 주문/배송조회 PC 바로가기<br> 주문/배송조회 모바일 바로가기
								</div></li>
							<li class="_faqTitle" data-bbsno="202"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원
										주문 후 주문내역은 어디서 확인 하나요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">[CJmall로그인] &gt; [비회원/간편구매조회] &gt;
									[비회원 주문/배송조회]에서 주문번호와 비밀번호를 입력하여 정보를 확인할 수 있습니다.</div></li>
							<li class="_faqTitle" data-bbsno="143"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원
										배송조회시 주문번호(비밀번호)가 기억이안나요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">CJmall 고객센터(☎1644-2525)로 문의하시기 바랍니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="139"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제까지했는데
										주문내역 확인안돼요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문 내역은 [CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이 가능합니다.<br>
									(주문서 작성 후 결제하기를 누르지 않으시면 최종 주문접수가 완료되지 않습니다.)<br> <br>
									1. 무통장 입금 방법을 선택할 경우<br> - 입금 가능한 은행을 선택 후 오른쪽으로 [결제하기]를
									클릭하시면 결제 창이 팝업되며,<br> 주문상품 및 결제 정보를 확인하시고 결제하기 버튼을 누르시면 최종
									주문결제가 완료됩니다.<br> <br> 2. 신용카드로 선택할 경우<br> -
									인증카드를 선택하여 ISP인증/안심클릭 서비스를 통해 결제하시고 오른쪽에 [결제하기]를 클릭하시면<br>
									&nbsp;결제창이 팝업되며, 주문상품 및 결제 정보를 확인하시고 결제하기 버튼을 누르시면<br>
									&nbsp;최종 주문결제가 완료됩니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="203"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원도
										상품주문이 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">비회원의 상품 구매도 가능하나 비회원 주문 시 CJmall 이벤트
									및 적립금과 할인쿠폰 혜택을 받을 수 없습니다.</div></li>
							<li class="_faqTitle" data-bbsno="201"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">방금
										상품 주문했습니다. 어디서 주문내역 확인하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문내역은 [CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이 가능합니다.<br>
									또한 주문번호(20080723-******)를 클릭하면 주문한 상품, 결제, 배송 예정일등의 정보 확인이
									가능합니다.<br> <br> ● 비회원의 경우에는<br> - [CJmall로그인]
									&gt; [비회원/간편구매조회] &gt; [비회원 주문/배송조회]에서 주문번호와 비밀번호를 입력하여 정보를 확인할
									수 있습니다.<br> <br> - 주문번호 및 비밀번호를 분실한 경우 CJmall
									고객센터(☎1644-2525)로 문의하시기 바랍니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회&nbsp;모바일
											바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="138"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJmall상품
										전화로도 구입 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님께서 인터넷 이용이 불가한 경우 당사 고객센터( ☎1644-2525 ) 상담원을 통해서도 주문이 가능합니다.<br>
									<br> 단, CJmall은 인터넷 주문시 다양한 할인혜택 (할인쿠폰 및 적립금혜택) 이 가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="142"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품
										주문 후 어디서 주문내역 확인하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문내역은 [CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이 가능합니다.<br>
									또한 주문번호(20080723-******)를 클릭하면 주문한 상품, 결제, 배송 예정일등의 정보 확인이
									가능합니다.<br> <br> ● 비회원의 경우에는<br> - [CJmall로그인]
									&gt; [비회원/간편구매조회] &gt; [비회원 주문/배송조회]에서 주문번호와 비밀번호를 입력하여 정보를 확인할
									수 있습니다.<br> <br> - 주문번호 및 비밀번호를 분실한 경우 CJmall
									고객센터(☎1644-2525)로 문의하시기 바랍니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="147"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">한번에
										결제했는데 주소지 다르게 보낼수있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문서 작성시 상품 받으시는 분 옆 복수배송지 선택 : 3군데까지 지정하실 수 있습니다.<br> <br>
									3곳 이상의 배송지 지정을 원하시는 경우는 별도로 주문해 주시기 바랍니다.<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="146"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">지금까지의
										주문내역 어디서 확인 할수있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									과거 주문하신 내역은 [CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이
									가능합니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="140"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">모바일로
										방송상품을 미리 주문하고 싶어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									모바일 [메인] &gt; [생방송상품] 하단 및 [TV쇼핑} &gt; [생방송상품] 하단의 편성표를 눌러 오늘 및
									전후 5일씩의 방송 일정을 확인하실 수 있습니다. 또한 화면 상단의 검색박스에 원하시는 상품을 입력하시면 동일
									일정 내 방송 스케줄이 예정된 경우 바로 확인 가능합니다.<br> <br> 단, 일부 상품의
									경우 상품 정보는 확인되나 주문이 제한적일 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="607779"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상담주문,
										대량구매신청시 개인정보 관련 동의에 대해 안내해주세요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상담주문이나 대량구매 신청을 하시면 요청하신 내용에 대해 협력사에서&nbsp;고객님께 연락을 드려 상품의 계약이나
									주문을 체결하게 됩니다. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br> 이
									경우, 고객님의 정보 수집과 협력사에 정보전달과 사용이 이루어지게 되는데 그에 대해 동의하셔야 상담주문접수,
									대량구매신청이 가능합니다.<br> <br> 협력사에 전달되는 고객님의 정보는 아래 기준으로
									관리됩니다.
									<div style="text-align: center;">
										<br> &nbsp;
									</div>
									<table border="0" cellpadding="0" cellspacing="0"
										style="width: 457pt; border-collapse: collapse;" width="609">
										<colgroup>
											<col
												style="width: 79pt; text-align: center; mso-width-source: userset; mso-width-alt: 3360;"
												width="105">
										</colgroup>
										<colgroup>
											<col
												style="width: 104pt; text-align: center; mso-width-source: userset; mso-width-alt: 4448;"
												width="139">
										</colgroup>
										<colgroup>
											<col
												style="width: 151pt; text-align: center; mso-width-source: userset; mso-width-alt: 6432;"
												width="201">
										</colgroup>
										<tbody>
											<!-- Not Allowed Attribute Filtered ( height="22") -->
											<tr style="height: 16.5pt;">
												<!-- Not Allowed Attribute Filtered ( height="22" width="105") -->
												<td
													style="border: 0.5pt solid windowtext; border-image: none; width: 79pt; height: 16.5pt; text-align: center; background-color: rgb(217, 217, 217);"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">제공받는자</font></span></td>
												<!-- Not Allowed Attribute Filtered ( width="139") -->
												<td
													style="border-width: 0.5pt 0.5pt 0.5pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext black; width: 104pt; text-align: center; background-color: rgb(217, 217, 217);"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">수집항목</font></span></td>
												<!-- Not Allowed Attribute Filtered ( width="201") -->
												<td
													style="border-width: 0.5pt 0.5pt 0.5pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext black; width: 151pt; text-align: center; background-color: rgb(217, 217, 217);"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">수집목적</font></span></td>
												<!-- Not Allowed Attribute Filtered ( width="164") -->
												<td
													style="border-width: 0.5pt 0.5pt 0.5pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext black; width: 123pt; text-align: center; background-color: rgb(217, 217, 217);"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">보유 및 이용기간</font></span></td>
											</tr>
											<!-- Not Allowed Attribute Filtered ( height="66") -->
											<tr style="height: 49.5pt;">
												<!-- Not Allowed Attribute Filtered ( height="66") -->
												<td
													style="border-width: 0px 0.5pt 0.5pt; border-style: none solid solid; border-color: black windowtext windowtext; height: 49.5pt; text-align: center; background-color: transparent;"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">해당 협력사</font></span></td>
												<td
													style="border-width: 0px 0.5pt 0.5pt 0px; border-style: none solid solid none; border-color: black windowtext windowtext black; text-align: center; background-color: transparent;"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">성함,전화번호,주소</font></span></td>
												<!-- Not Allowed Attribute Filtered ( width="201") -->
												<td
													style="border-width: 0px 0.5pt 0.5pt 0px; border-style: none solid solid none; border-color: black windowtext windowtext black; width: 151pt; text-align: center; background-color: transparent;"><span
													style="font-size: 12px;"><font color="#000000"
														face="맑은 고딕">상품상담 및 주문접수</font><br> <font
														color="#000000" face="맑은 고딕">상품(사은품) 배송<br>
															회원정보 및 계약 관리
													</font></span></td>
												<!-- Not Allowed Attribute Filtered ( width="164") -->
												<td
													style="border-width: 0px 0.5pt 0.5pt 0px; border-style: none solid solid none; border-color: black windowtext windowtext black; width: 123pt; text-align: center; background-color: transparent;"><span
													style="font-size: 12px;"><font face="맑은 고딕"><font
															color="#000000">목적 달성시</font><br> <font
															color="#000000">(동의철회시)</font></font></span></td>
											</tr>
										</tbody>
										<colgroup>
											<col
												style="width: 123pt; text-align: center; mso-width-source: userset; mso-width-alt: 5248;"
												width="164">
										</colgroup>
									</table>
									<div style="text-align: center;">
										<br> <br> &nbsp;
									</div>
								</div></li>
						</ul>

						<!-- 신용카드 -->
						<div class="faq_keyword">
							<span class="txt_keyword">신용카드</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="253"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무이자할부는
										전상품에 해당되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">무이자 할부 여부는 상품상세의 정보를 보시면 되고 전상품에
									해당되지 않습니다.</div></li>
							<li class="_faqTitle" data-bbsno="252"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">신용카드
										할부 결제를 하고 싶은데요 기준을 알려주세요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									5만원 이상의 결제건에 대해 할부 설정이 가능합니다.<br> 상품마다 무이자할부가 가능한 경우가 일부
									있고, 무이자로 노출되지 않으면 유이자 할부로 진행됩니다.<br> 간편결제의 경우, 실제 결제가 일어나는
									곳이 CJ몰이 아니라 해당 간편결제사이기 때문에 CJ몰의 무이자 기준과 달리 적용됩니다.<br> <br>
									예) CJ몰에서 10개월 무이자 할부가 가능한 TV가 있는데<br>
									&nbsp;&nbsp;&nbsp;&nbsp; 간편결제를 진행시에는 해당 간편결제사에서 3개월 무이자까지만 진행<br>
									&nbsp;&nbsp;&nbsp;&nbsp; 간편결제수단으로 결제하면서 10개월 할부 선택시, 유이자 적용됨
								</div></li>
							<li class="_faqTitle" data-bbsno="246"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">청구할인이
										적용되는 기준은 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									청구할인이 가능한 상품 여부는 상품상세페이지에서 확인이 가능합니다.<br> 한 가지 상품에 다수의
									청구할인행사가 진행되는 경우도 있습니다.<br> 단, 결제금액 5만원 이상인 경우 청구할인적용이 되며
									CJ카드 5% 청구할인은 5만원 미만인 경우에도 청구할인이 적용됩니다. (할인금액 기준 :
									KB국민/현대/제일BC/신한/씨티-월 3만원限, 하나SK-월 4만원限,삼성-월 5만원限)<br> <br>
									신한카드/KB국민카드 등의 카드는 1일 결제한도 400만원까지 할인이 되며, BC/현대카드 등은 1일 결제한도
									제한이 없습니다.<br> <br> BC카드는 Non-BC카드, 기프트카드, 법인카드가
									제외됩니다.<br> 현대카드는 법인/기프트/체크카드/선블/하이브리드 카드가 제외됩니다.<br>
									KB국민카드는 KB비씨/기프트/법인카드가 제외됩니다.<br> 신한카드는 신한BC, 법인,선불,기프트카드가
									제외되며, 청구할인시 하이포인트 계열카드의 포인트 적립에서 제외됩니다.<br> <br> 행사마다
									조건이 조금씩 달라지는 특징이 있어서 가장 정확한 기준은 해당 청구할인 이벤트 페이지의 하단 공지영역을
									참고하세요.<br> <br> 단, 결제변경, 상담원결제, ARS주문 등은 청구할인이 되지
									않습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="254"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무이자
										할부 개월수가 다른 상품을 같이 사면 어떻게 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									무이자 할부 개월수가 다른 상품을 같이 사면 낮은 무이자 개월수를 적용받게 됩니다.<br> 예를 들어
									12개월 무이자, 10개월 무이자를 동시 구매시에는 최대 10개월까지 무이자 설정이 가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="249"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">페이코,
										카카오페이, 페이나우, 시럽페이는 무이자할부 기준이 다른가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">네 간편결제는 CJ몰의 무이자 기준과 달리 각각의 간편결제사의
									무이자 행사 기준을 따르게 됩니다. 예를 들어 12개월 무이자 상품을 간편결제를 통해 결제하시는 경우 해당
									간편결제사에서 3개월 무이자 행사만 진행중이라 하면 12개월로 할부개월 설정시 유이자로 진행됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="250"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ카드를
										이용하면 어떤 혜택이 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									The CJ카드는 기존 신용카드의 혜택과 함께 CJ그룹 관계사(The CJ Card 특별가맹점)에서 제공하는 할인
									및 적립금 혜택을 동시에 누리실 수 있습니다.<br> <br> The CJ카드로 CJmall주문
									결제시 5%청구할인<br> (KB국민/현대/제일BC/신한/씨티-월 할인금액 3만원限)<br>
									(하나SK-월 할인금액 4만원限)<br> (삼성-월 할인금액 5만원限)<br> -
									CJmall,방송,카탈로그 합산 적용<br> <br> The CJ Card에 대한 자세한 내용은<br>
									The CJ카드 홈페이지에서 확인하실 수 있습니다.<br> <br> <a
										href="http://card.cjmall.com/card/card_main.jsp "
										target="_self"><font color="red">The CJ카드 홈페이지 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="243"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제수단이
										특정 카드 하나만 보이는데 왜 그런가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									특정 카드의 제휴몰로 CJ몰로 이동하신 경우 또는 특정 카드 결제만 허용된 이벤트인 경우 결제수단이 제한되어 보일
									수 있습니다.<br> <br> 다른 결제수단으로 결제하고 싶으시면 로그아웃하시고 새 창으로 다시
									접속해주시면 됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="247"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">신용카드
										청구할인도 한도가 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									신한카드/KB국민카드 등의 카드는 1일 결제한도 400만원까지 할인이 되며, BC/현대카드 등은 1일 결제한도
									제한이 없습니다.<br> <br> BC카드는 Non-BC카드, 기프트카드, 법인카드가
									제외됩니다.<br> 현대카드는 법인/기프트/체크카드/선블/하이브리드 카드가 제외됩니다.<br>
									KB국민카드는 KB비씨/기프트/법인카드가 제외됩니다.<br> 신한카드는 신한BC, 법인,선불,기프트카드가
									제외되며, 청구할인시 하이포인트 계열카드의 포인트 적립에서 제외됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="248"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ카드5%청구할인과
										일반청구할인행사 중복시 어떤것이 적용되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									일반 청구할인 행사가 우선합니다.<br> 예를 들어 The CJ 신한카드를 가진 고객이 있는데<br>
									오늘이 신한카드 7% 청구할인 행사를 하는 날이라고 하면<br> 7% 청구할인이 적용되며, CJ카드
									월3만원 할인 한도도 차감되지 않습니다.<br> <br> 단, 5만원이상 결제인 경우만 해당되며
									해당일 5만원 미만 결제시에는 5% CJ카드 청구할인이 적용됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="244"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">청구할인이
										안되는 상품은 어떤 것이 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">상품권/서비스/환금성 상품 등 일부 상품은 청구할인 대상에서
									제외되며 상품 상세 페이지에 청구할인가에 대한 안내가 없습니다.</div></li>
							<li class="_faqTitle" data-bbsno="245"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">청구할인이
										여러 개 해당되는 경우 어떤 기준으로 적용되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									예를 들어 A 라는 상품이 있는데 상품 상세페이지에서<br> 신한카드 5% 청구할인,신한카드 10%
									청구할인<br> 두가지 기준이 노출되는 경우 결제하는 카드에 따라 청구할인율이 다르게 적용됩니다.<br>
									<br> 그런데 B라는 상품은 신한카드 5% 청구할인 기준만 적용되는데<br> A와 B를 같이
									구매하는 경우&nbsp; 낮은 기준 5% 청구할인이 적용됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="251"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">신용카드
										포인트 결제도 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문서에서 사용하실 포인트가 있는 신용카드를 선택하시고, 포인트결제 체크를 하시면 신용카드 포인트 결제를 하실 수
									있습니다.<br> 단, 일부 카드는 포인트 제휴가 되어 있지 않으며 그 경우 포인트 결제 영역이 노출되지
									않습니다.<br> <br> ● 결제가 가능한 카드사 포인트<br> - 현대카드M포인트
									: 최대 결제금액의 10%까지 1포인트부터 사용가능<br> - 삼성카드 보너스 포인트 :
									5,000포인트이상 적립시<br> - KB포인트리 : 1점 이상부터 사용<br> - 비씨
									TOP포인트 : 1포인트 이상 적립 시 사용<br> - 신한(구 LG)하이포인트 카드 : 최대 결제금액의
									10%까지 1포인트 이상부터 사용가능<br> - 신한(구 LG) 홈앤스윗포인트 : 최대 결제금액의
									5%까지 1천포인트 이상부터 사용가능<br> (100포인트 단위사용) 입니다.<br> -
									우리모아포인트 : 1,000포인트이상 적립시 1,000포인트단위 사용가능<br> - 씨티카드 씨티포인트
									: 최대 결제금액의 10%까지 1포인트부터 사용가능<br> <br> ● 결제 방법 및 유의사항은<br>
									- 포인트 부족시 일반 결제로 처리되며, 결제액이 5만원 미만시 할부가 불가합니다.<br> <br>
									&nbsp;[삼성카드 기준]<br> 예1) 포인트 6,000점인데, 40,000원 상품주문시<br>
									&nbsp;포인트 6,000점 사용, 나머지 34,000원 일반카드 결제 처리<br> [비씨카드 기준]<br>
									예1) 50,000원 상품구매시 포인트 4,000점사용<br> - 포인트
									사용불가(5,000점미만),50.000원으로 비씨카드 결제 처리<br> &nbsp;예2) 50,000원
									상품구매시 포인트 6,500점 사용<br> - 포인트 5,000점 사용 처리되며, 나머지 45,000원
									비씨카드 결제 처리<br> <br> ● 포인트가 부족할 경우, 다음과 같은 메세지가 나올 수
									있으니 이 경우 각 카드사 고객센터에<br> &nbsp;문의하시기 바랍니다. 예) 유효기간 경과카드,
									할부개월 오류 등등<br> <br> ● 기업공용(법인)카드,가족카드는 사용이 불가 하며 자세한
									포인트 관련 사항은 해당<br> &nbsp;카드사 홈페이지에서 하실 수 있습니다.<br>
									&nbsp;
								</div></li>
						</ul>
						<!-- 무통장 입금 -->
						<div class="faq_keyword">
							<span class="txt_keyword">무통장입금</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="195"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장입금
										했는데 왜 결제완료로 바뀌지않나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									무통장입금 주문을 하시고 주문금액을 송금하신 경우, 즉시 결제완료로 바뀌지 않고 주문완료로 보입니다 10분 내로
									결제완료로 바뀝니다.<br> <br> 혹시 30분이 지나도 결제완료로 바뀌지 않으면
									고객센터(1644-2525) 로 연락해주시면 해결해드리겠습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="194"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장입금시계좌번호는가상계좌가요?개인계좌가요?</strong>
									<span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									은행마다 개인계좌로 가상계좌를 발급해드리고 있습니다.<br> 계좌번호는 은행이 동일한 경우 계속 한가지
									번호로 사용하시게 되며, 계좌는 입금자 단위로 발급되는 것이 아니라 회원 아이디 당 발급됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="197"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한상품금액보다실수로더입금했는데환불되나요?</strong>
									<span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님이 과입금한 금액은 예치금으로 보관되어 있습니다.<br> 예치금은 상품 구매 시 바로 현금처럼
									사용할 수 있으며 현금영수증 발행도 가능합니다. 또 원하시는 경우 현금으로 전환 입금도 가능하며 상담원에게
									신청해주시면 됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="193"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장
										입금시 오류가 발생합니다.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									무통장입금 오류 발생의 대부분은 전용계좌번호 및 입금금액(주문금액)이 다른 경우에 발생할 수 있습니다.<br>
									입금계좌번호, 입금액을 확인 후 재시도해주시고, 지속적으로 오류 발생시 고객센터로 문의해주세요.
								</div></li>
							<li class="_faqTitle" data-bbsno="190"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장
										입금 은행을 알려주세요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문시 선택하실 수 있는 무통장입금 은행은 아래와 같습니다.<br> <br> 무통장 입금은
									하나은행/우체국/국민은행/외환은행/농협중앙회/우리은행/신한은행/대구은행/부산은행을<br> 통해
									가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="196"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">입금
										예정일까지 입금 안하면 취소되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">입금예정일은 고객님께서 입금하기로 약속하신 날짜로 되도록 그
									기한안에 입금해주시는 것이 좋습니다. 미입시 취소 기준은 주문일 기준 최대7일이며, 7일 내 입금되지 않으면
									자동으로 미입금 취소됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="199"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">입금자명을
										잘못 썼어요.확인이 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">무통장 입금 주문시 발급해드리는 가상 계좌는&nbsp; 입금자
									단위로 발급되는 것이 아니라 회원 아이디 당 발급됩니다. 그래서 입금자명은 잘못 쓰셔도 괜찮습니다.</div></li>
							<li class="_faqTitle" data-bbsno="191"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문후
										무통장입금계좌는 어디서확인하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">주문완료 이메일, 카카오톡 주문완료 알림, 마이존의 주문
									상세조회에서 가능합니다.</div></li>
							<li class="_faqTitle" data-bbsno="198"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장
										입금 예금주명은 어떻게 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									무통장 입금 주문하신 경우, [예금주]는 씨제이 오쇼핑 입니다.<br> 꼭 확인 후 입금해주세요
								</div></li>
							<li class="_faqTitle" data-bbsno="192"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장입금
										입금금액 한도가 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1천만원까지만 무통장입금 주문이 가능합니다.<br> 단, 1천만원을 초과하는 금액을 무통장입금 주문하고
									싶으시면 고객센터(1644-2525)로 연락주시면 해제해드립니다.
								</div></li>
						</ul>

						<!-- 결제방법 -->
						<div class="faq_keyword">
							<span class="txt_keyword">결제방법</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="233"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제수단은
										어떤 것들을 지원하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJ몰에서는 다양한 결제수단을 제공합니다.<br> <br> &nbsp;- 현금성 결제수단 :
									무통장입금, 실시간계좌이체, 예치금, 상품권<br> &nbsp;-&nbsp; 비현금설 결제수단 :
									신용카드, 간편결제(페이코, 페이나우, 시럽페이, 카카오페이), 휴대폰결제<br>
									&nbsp;-&nbsp; 포인트성 결제수단 : 적립금, CJONE 포인트<br> &nbsp;-&nbsp;
									제휴포인트 결제수단 :&nbsp; 컬쳐캐쉬, 해피머니, 북앤캐시<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									(해피머니, 북앤캐시는 PC에서만 서비스 중)
								</div></li>
							<li class="_faqTitle" data-bbsno="260"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">쿠폰있는데
										상품에 적용되지 않아요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">최저 판매금액 기준에 미달하는 경우, 제외상품으로 설정된 경우에는
									쿠폰이 적용되지 않을 수 있습니다. 적용되지 않는 경우는 주문서에서 보여지지 않거나 선택 불가로 안내됩니다</div></li>
							<li class="_faqTitle" data-bbsno="261"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">취소하면
										쿠폰은 어떻게 되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									쿠폰/등급별 할인 혜택의 경우 주문 취소 후 할인 혜택을 다시 사용하실 수 있습니다.<br> 단, 쿠폰의
									경우 1회까지만 취소 후 원상복구 가능한 점 양해 부탁드립니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="265"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">할인쿠폰,
										쇼핑플러스 쿠폰의 차이가 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">할인쿠폰은 1차 할인쿠폰이고 쇼핑플러스 쿠폰은 중복 쿠폰입니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="266"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">네이버
										지식쇼핑에서 받은 제휴 쿠폰은 자동적용되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">네이버 지식쇼핑 등에서 별도로 다운로드받으신 제휴쿠폰은
									수동적용됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="259"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">쿠폰
										어디서 받나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									이벤트쿠폰은 이벤트페이지에서 다운로드되거나, 사후지급됩니다.<br> 등급쿠폰, 무료배송쿠폰은 일정한
									등급별로 기준을 정해 다운로드, 지급됩니다.<br> 제휴쿠폰은 제휴채널 인입시 팝업 등지에서 다운로드
									받으실 수 있습니다.<br> <br> 위의 3가지 유형의 쿠폰은&nbsp; 주문서에서
									수동적용해야 하는 쿠폰이며,<br> 상품의 할인은 자동 다운로드. 자동 적용되어 다운받지 않으셔도 됩니다
								</div></li>
							<li class="_faqTitle" data-bbsno="237"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원주문을
										했는데 주문번호, 비밀번호를 모르겠어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문완료 이메일에 해당 내용 기재가 되어있습니다.<br> 메일을 찾지 못하시는 경우, 상담원을 통해
									확인이 가능합니다.<br> 고객센터 (1644-2525) 로 문의해주세요.
								</div></li>
							<li class="_faqTitle" data-bbsno="258"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품할인은
										어떻게 적용되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품 상세페이지에서 확인하신 고객맞춤가는 주문시 자동으로 적용됩니다.<br> 고객맞춤가에 포함되는 할인은
									할인쿠폰, 일시불할인, 적립금즉시할인이 자동적용됩니다.<br> <br> 이벤트로 받으신 쿠폰이나
									등급쿠폰, 무료배송 쿠폰,&nbsp; 제휴쿠폰은 고객맞춤가에 반영되지 않으며 수동으로 직접 선택하셔야 합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="264"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">적립금
										즉시할인은 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									적립금을 주문하시면서 할인 적용하실 수 있는 제도입니다.<br> 선할인 적용하지만 나중에 적립받는 금액의
									80% 를 할인받게 되고<br> 나중에 적립받으시면 100%로 지급됩니다.<br> <br>
									예를 들어 1만원적립금이 셋팅되어 있는 상품이 있는데 적립금 선할인으로 적용하시면 8천원 할인이 됩니다. 사후에
									지급을 받으시게 되면 1만원이 지급됩니다
								</div></li>
							<li class="_faqTitle" data-bbsno="236"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원도
										상품주문이 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									대부분의 상품이 비회원 주문은 제공하고 있습니다.<br> 단, 비회원 주문시, 할인을 받으실 수 없으며
									이벤트 및 적립금 CJONE 포인트 지급이 되지 않습니다.&nbsp;<br> 신용카드 청구할인은
									적용됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="263"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">일시불할인은
										뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									결제를 일시불로 하시는 경우 할인해드리는 제도입니다.<br> 신용카드의 경우 일시불, 무통장입금,
									실시간결제, 휴대폰결제, 간편결제, 포인트 결제 등으로 적용받으실 수 있는 할인입니다<br> <br>
									단, 할부로 전환시, 할인받으신 금액은 할인적용이 취소됩니다
								</div></li>
							<li class="_faqTitle" data-bbsno="235"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원
										주문하고 싶은데 비회원 주문 버튼이 안보여요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									일부 상품은 비회원 주문이 불가하도록 셋팅되어 있습니다.<br> 그러한 경우 비회원 주문 버튼이
									비노출됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="262"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송비
										쿠폰은 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									기본 배송비를 할인받으실 수 있는 쿠폰입니다.<br> 한 개의 주문에 여러 개의 배송비가 발생하는 경우
									가장 큰 금액을 차감해드리며, 배송비의 상한선은 없이 전액 면제해드리는 쿠폰입니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="257"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">순금/모바일기프티콘을
										간편결제수단으로 살수있나요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">네 순금 모바일이용권 등의 일부상품은 간편결제가 불가합니다.</div></li>
							<li class="_faqTitle" data-bbsno="242"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">개인통관
										고유부호를 입력하라는데 무슨 말인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									해외에서 배송되어 오는 상품은 국내 통관을 주문자 명의로 받게 됩니다.<br> 그래서 주문자의 개인 통관
									고유부호를 꼭 입력해주셔야 주문이 가능합니다.<br> <br> 상품군과 배송비를 포함한
									주문금액에 따라 관부가세가 부과될 수 있으며 주문시 입력하신 연락처 정보로 관세청에서 연락드리게 됩니다.<br>
									&nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="267"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송비쿠폰으로는
										도서산간배송비, 빠른배송비는 할인 안되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									배송비쿠폰은 기존 배송비만 할인됩니다.<br> 도서산간배송비, 빠른배송비는 할인수단어 없어 할인이
									불가합니다
								</div></li>
							<li class="_faqTitle" data-bbsno="607798"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">예치금이
										무엇인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									예치금은 현금성 적립금 개념으로, 상품 구매 시 현금처럼 사용 가능합니다.<br> 예치금은 CJmall
									[마이존] → [혜택관리&gt;예치금] 메뉴에서 확인하실 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="607786"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">카카오페이
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<!-- Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__") -->
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_kakaopay.jpg">
								</div></li>
							<li class="_faqTitle" data-bbsno="234"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">복수배송은
										몇군데까지 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									복수배송은 최대 3곳까지 설정이 가능합니다.<br> 4곳 이상의 복수배송을 원하시면
									고객센터(1644-2525)로 문의해주세요.
								</div></li>
							<li class="_faqTitle" data-bbsno="607789"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">스마일페이
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<!-- Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__") -->
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_smilepay.jpg">
								</div></li>
							<li class="_faqTitle" data-bbsno="607787"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">네이버페이
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<!-- Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__") -->
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_Npay.jpg">
								</div></li>
							<li class="_faqTitle" data-bbsno="607788"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">페이코
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<!-- Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__") -->
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_payco.jpg">
								</div></li>
						</ul>
						<!-- 상품권 -->
						<div class="faq_keyword">
							<span class="txt_keyword">상품권</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="149"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ상품권으로
										상품구매하면 현금영수증되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">보유하고 있는 CJ상품권으로 상품 구매 시에는 현금영수증 발행이
									가능합니다.</div></li>
							<li class="_faqTitle" data-bbsno="148"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ상품권구입시
										세금계산서나 현금영수증되나요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품권은 일반상품권과 동일한 유가증권에 해당하므로, 세법에 의거하여 상품권 구입은 세금계산서 및 현금영수증 처리가
									되지 않습니다.<br> <br> ※ 상품권으로 결제 시(다른 현물로 교환될 때) 거래가 이루어진
									것으로 간주되기 때문에, 상품권 구입 시에는 세금계산서가 발행되지 않으며 구입하신 상품권으로 상품을 구매하셨을 때
									세금계산서 발행이 가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="256"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품권을
										사려고 하는데 카드결제는 안되는 건가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">상품권은 현금성 결제수단으로만 결제가 허용됩니다.</div></li>
						</ul>
						<!-- 실시간 계좌이체 -->
						<div class="faq_keyword">
							<span class="txt_keyword">실시간계좌이체</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="241"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">시티은행
										계좌 입금하는데 CMS 코드가 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									실시간 계좌이체시, 비회원 무통장결제시 안내되는 시티은행 계좌는 개인별로 발급되는 가상계좌가 아닙니다. 그래서
									별도의 CMS 코드를 입력받아 주문을 구분하고 있습니다.<br> 주문시 입력하신 전화번호를 입력해주시면
									전화번호와 입금금액, 입금자명을 매칭해서 입금확인 절차가 이루어집니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="238"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">실시간
										계좌이체가 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									실시간 계좌이체는 주문 완료 후 바로 [실시간 계좌이체]로 연결되며,<br> 금융결제원의 안전한 거래를
									위한 공인인증서 확인후 입금이 가능합니다.<br> <br> 결제관련 문의 : 금융결제원 고객센터
									(☎1577-5500)<br> 실시간 계좌 이체가 즉시 진행되지 않고 실패하는 등의 경우는&nbsp;
									시티은행 무통장 입금으로 주문 접수가 되며 실시간 계좌이체를 원하실 경우는 주문 취소 후 다시 주문하셔야 합니다.<br>
									<br> 시티은행이 아닌 다른 은행으로 무통장 입금을 원하시는 경우는 재주문을 해주시거나
									고객센터(1644-2525)로 문의하셔서 입금계좌를 안내받으시기 바랍니다.<br> <br>
									&lt;실시간 계좌이체시 주의사항&gt;<br> - 인터넷으로 상품구매와 동시에 본인 통장에서
									CJ오쇼핑으로 바로 입금처리가 됩니다.<br> - 실시간 계좌이체시 은행별 서비스 가능시간을
									확인바랍니다.<br> - 고객님의 실시간 계좌이체 내역을 확인할 수 있습니다.<br> - 실시간
									계좌이체로 주문처리 중 병행 결제한 카드의 장애사 발생할 경우는 이체 처리 후<br>
									&nbsp;취소처리되어 바로 고객님의 통장에 재입금 됩니다.<br> - 실시간 계좌이체는 10분 이내로
									입금확인을 하실 수 있습니다.<br> - 실시간 계좌이체는 1,000원이상 주문 시 가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="239"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">실시간
										계좌이체를 취소했는데 시티은행으로 입금하래요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									실시간 계좌이체를 시도하다가 실패하거나 창이 닫히는 경우,<br> 시티은행 계좌로 입금하실 수 있도록
									하고 있습니다.<br> 해당 주문은 주문완료, 입금대기 상태이며, 주문자명으로 입금해주시면 됩니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="240"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">실시간
										계좌이체를 했는데 왜 결제완료가 아니고 주문완료 인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									실시간 계좌이체에 성공하신 경우, 즉시 결제완료로 바뀌지 않고 주문완료로 보입니다 10분 내로 결제완료로
									바뀝니다.<br> 혹시 30분이 지나도 결제완료로 바뀌지 않으면 고객센터(1644-2525) 로
									연락해주시면 해결해드리겠습니다.
								</div></li>
						</ul>

					</div>
					
					<div class="_faqListTemplateContainer tabcontent" id='3'>
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
									<div style="text-align: center;">
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0826_cs_takingback.jpg">
										<br> <br> <a class="btn_cs_default"
											href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
											target="_self">주문/배송조회 바로가기 PC</a>
									</div>
									<div style="text-align: center;">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
											target="_self">주문/배송조회 바로가기 모바일</a>
									</div>
									&nbsp; <br>
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
									재부여 해 드립니다.<br> 당사 고객센터 (1644-2525)로 문의 해 주세요.
								</div></li>
							<li class="_faqTitle" data-bbsno="88"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품
										신청했는데, 그냥 사용하고 싶어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">당사 고객센터(1644-2525)로 연락주시면 반품철회
									도와드리겠습니다</div></li>
							<li class="_faqTitle" data-bbsno="86"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">반품접수를
										하지않고 상품 직접 보내도되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									반품접수를 하지 않고 상품을 직접 보내시는 경우 당사 또는 협력사에서 회수 확인이 지연될 수 있습니다.<br>
									먼저 상품을 보내신 경우 당사 고객센터(1644-2525)로 연락주시면 회수 처리 될 수 있도록 도와드리겠습니다.
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
									- 고객센터(1644-2525)로 전화 주시거나,<br> - CJmall 모바일앱에서 [1:1채팅상담]
									또는 CJmall 모바일웹 [1:1문의작성]을 통해 요청하시면 회수지 주소 변경 도와드리겠습니다.<br>
									<br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
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
									배송이 완료된 상품 중 7일 이내의 상품은 [CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회]
									&gt; [반품신청]/[교환신청]을 통하여 교환/반품 신청할 수 있습니다. 배송이 완료된 후 7일이 지났거나,
									CJmall에서 신청이 불가한 경우 청약철회기간 이내에 당사 고객센터(1644-2525)로 연락주시면 교환/반품
									신청이 가능합니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
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
									당사 고객센터(1644-2525)로 전화 주시거나,<br> CJmall 모바일앱에서 [1:1채팅상담]
									또는 CJmall 모바일웹 [1:1문의작성]을 통해 해당 내용을 접수해 주시면 2-3일이내 상품이 회수될 수
									있도록 하겠습니다.<br> <br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
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
								<div class="cont_faq">교환 받을 상품의 출고 이전까지 당사 고객센터 1644-2525
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
									<div style="text-align: center;">
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0826_cs_cancelorder.jpg">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
											target="_self">주문/배송조회 PC 바로가기</a>
									</div>
									<div style="text-align: center;">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
											target="_self">주문/배송조회 모바일 바로가기</a>
									</div>
								</div></li>
							<li class="_faqTitle" data-bbsno="96"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제수단
										변경하려면 주문취소하고 재주문하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품을 취소하지 않고도 다른 결제수단으로 결제 변경이 가능합니다.<br> -&nbsp;
									[CJmall로그인] &gt; [마이존] &gt; [주문/배송 조회] &gt; [결제변경]<br> :
									당일 주문 건에 한하여 23시30분까지 신용카드로 결제변경이 가능합니다.<br> <br> -
									신용카드 외 다른 결제수단으로 변경을 원하는 경우<br> : 당사 고객센터(1644-2525)로
									연락주시면 결제변경 도와드리겠습니다.<br> <br> <a
										href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|pordgo#1"
										target="_self"><font color="red">주문/배송조회 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/orderList?listType=ORDER&amp;orderStatus=ALL&amp;pic=MYCJ|odrlist#1"
										target="_self"><font color="red">주문/배송조회 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="94"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">취소
										신청 했는데 배송이 왔어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									취소한 내역을 확인하지 못하고 출고되는 경우가 있습니다.<br> 이미 취소한 상품이므로 택배기사님 연락
									시 “수취거부” 해 주시면 됩니다.<br> 만약 상품을 인수하셨다면&nbsp; 당사
									고객센터(1644-2525)로 전화 주시거나,<br> CJmall 모바일앱에서 [1:1채팅상담] 또는
									CJmall 모바일웹 [1:1문의작성]을 통해 연락 주시면<br> 상품 회수 도와드리겠습니다.<br>
									<br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="95"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJmall에서
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
									취소 신청 후 카드취소 또는 현금환불이 진행된 상태이므로 당사 고객센터(1644-2525)로 연락주시면 재결제
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
									경우 당사 고객센터로 전화 주시거나, CJmall 모바일앱에서 [1:1채팅상담] 또는 CJmall 모바일웹
									[1:1문의작성]을 통해 요청하시면 자세하게 안내해 드립니다.<br> <br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="75"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">명품상품
										A/S 신청 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1. CJ오쇼핑이 직접 수입한 상품의 A/S는 CJ오쇼핑을 통해서만 가능하며, 백화점 및 타 매장에서의 A/S는
									불가능합니다.<br> 2. 구입일로부터 6개월 이내 구입한 상품은 무상 A/S가 보장되므로 명품을
									전문으로 수선하는 업체를 통해 당사 또는 협력사에서 A/S 처리를 해 드립니다.<br> 3. 보증기간이
									지난 상품이나 고객의 부주의로 인한 A/S인 경우 유상으로 처리해 드립니다.
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
								<div class="cont_faq">당사 고객센터( ☎1644-2525)로 연락 주시기 바랍니다.
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
									경우도 있음을 양해바라며. 계속해서 연락이 오는 경우 당사 고객센터(1644-2525)로 연락주시면 신속하게
									처리해드리겠습니다.</div></li>
							<li class="_faqTitle" data-bbsno="106"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품
										회수 주소를 변경 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									예, 가능합니다만 [1:1문의작성] 또는 고객센터(☎1644-2525)에 고객님께서 원하시는 주소로 회수방문지를
									변경해 주셔야 합니다.<br> <br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
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
									아래와 같습니다.<br> <br> [환불방법/시점]<br> <br> ①
									신용카드 : 카드 승인 취소 후 3~4일(휴일제외)이내 카드사 확인가능.<br>
									&nbsp;&nbsp;&nbsp; (체크카드의 경우 최대 7일 소요)<br> ② 현금(무통장/계좌이체)
									: 현금환불 접수 후 1~2일 내 입금 확인 가능.(영업일 기준)<br> ③ 적립금, 예치금,
									CJONE포인트 : 취소 또는 반품 완료 후 1일 이내.(영업일 기준)<br> ④ 간편결제 :
									간편결제사별 정책 기준에 따름.<br> ⑤ 휴대폰결제 : 당월 승인 후 당월 취소 시 휴대폰결제 승인
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
							<li class="_faqTitle" data-bbsno="607792"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">기프티콘
										환불 방법을 알려주세요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									기프티콘의 종류에 따라 환불 기준이 상이할 수 있습니다. 기프티콘 사용문의, 재발송, 기간연장의 경우 상품
									상세페이지 발송처 고객센터를 통해 요청하시면 신속하게 처리 받으실 수 있습니다.<br> 자세한 사항은
									해당 상품 상세 페이지의 발송처 고객센터 정보를 참고하시기 바랍니다.<br> <br> *
									기프티콘 고객센터 : 02-6323-9129<br> * 기프티쇼 고객센터 : 1588-6474
								</div></li>
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
				
					<div class="_faqListTemplateContainer tabcontent" id='4'>
						<!-- 검색어가 있을경우 -->

						<!-- 검색어가 없을 경우 -->
						<div class="faq_keyword">
							<span class="txt_keyword">가입</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="207"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ
										ONE 통합회원 멤버십이 무엇인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJ ONE 통합회원 멤버십이란 CJ ENM, CGV, 뚜레쥬르, 빕스 등 CJ의 다양한 브랜드를 더욱 알차게
									이용하실 수 있는 라이프 스타일 멤버십 제도입니다. 각 제휴 브랜드에서 구매 시 구매금액의 일정 비율을 포인트로
									적립해 드리고 있으며, 적립한 포인트는 1,000P 이상 보유 시 제휴 브랜드에서 현금처럼 다양하게 사용가능
									합니다.<br> <br> [이용안내]<br> - CJ ONE 통합회원이 되시면 하나의
									통합된 회원 ID와 비밀번호로 CJ ONE 및 각 브랜드 웹 사이트의 다양한 서비스(포인트 조회, 카드등록,
									정보변경 서비스 등)를 이용하실 수 있습니다<br> - CJ ONE에 가입하더라도 약관 동의되지 않은
									CJ ONE 제휴 브랜드에는 개인정보가 제공되지 않습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="204"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJmall
										회원가입은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJmall 회원이 되면 CJ오쇼핑의 다양한 서비스를 이용하실 수 있습니다.<br> <br>
									[CJmall 회원 가입 방법]<br> ▶ [CJ ONE + CJmall 통합회원]으로 가입<br>
									하나의 CJONE ID로 CJONE 회원 사이트의 모든 서비스를 안전하고, 편리하게 이용할 수 있습니다.<br>
									<br> ▶ [CJmall 회원]으로 가입<br> 본인인증 절차 없이 간편하게 가입하여
									CJ오쇼핑에서 제공하는 서비스를 이용할 수 있습니다.<br> <br> <a
										href="https://base.cjmall.com/p/page/account/registerGate"
										target="_self"><font color="red">회원가입 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/page/account/registerGate"
										target="_self"><font color="red">회원가입 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="205"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회원가입하면
										어떤 혜택이 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									회원 가입 시, 아래와 같은 혜택을 제공합니다.<br> <br> 1. 신규 회원 가입 쿠폰 제공<br>
									2. 구매상품 및 실적에 따른 적립금, 쿠폰, CJ ONE포인트 제공<br> 3. TV쇼핑, 카탈로그,
									인터넷쇼핑몰 구매정보 통합 조회 가능<br> 4. 문화이벤트 혜택, 각종 행사 응모 등 다양한 이벤트
									참여 가능<br> 5. 구매 실적에 따른 CJmall 우수고객 서비스 제공<br> <br>
									<a href="https://base.cjmall.com/p/page/account/registerGate"
										target="_self"><font color="red">회원가입 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/page/account/registerGate"
										target="_self"><font color="red">회원가입 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="607780"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ
										ONE 통합아이디와 CJmall 간편회원의 차이는 무엇인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJ ONE 통합회원 가입 및 CJmall 약관 동의시 동일 ID/비밀번호로 이용 가능합니다.<br> <br>
									[약관 동의 방법]<br> ① CJ ONE 사이트 로그인 &gt; 맨 하단 CJmall 배너 클릭
									&gt; PC홈페이지 클릭 &gt; 약관동의 창 팝업에 동의.<br> ② CJmall 사이트에서
									CJONE아이디/비밀번호로 로그인 &gt; 약관동의 창 팝업에 동의.&nbsp;<br> <br>
									단, CJmall 간편 가입시 CJ ONE 포인트/적립등의 혜택이 제공되지 않습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="607790"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ
										ONE 통합회원 가입은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<div style="text-align: center;">
										<!-- Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__") -->
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0727_cs_signup.jpg">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/p/page/account/registerGate"
											target="_self">CJ ONE 통합회원 가입하기</a> <br> &nbsp;
									</div>
								</div></li>
							<li class="_faqTitle" data-bbsno="607784"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">통합회원
										가입하기 약관동의가 안돼요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									약관 동의 방법을 안내 드립니다.<br> <br> ① CJ ONE 사이트 로그인 &gt; 맨
									하단 CJmall 배너 클릭 &gt; PC홈페이지 클릭 &gt; 약관동의 창 팝업에 동의.<br> ②
									CJmall 사이트에서 CJONE 아이디/비밀번호로 로그인 &gt; 약관동의 창 팝업에 동의.&nbsp;<br>
									<br> 지속적으로 약관 동의가 되지 않으실 경우 오류 메세지 확인 후 고객센터로 연락 부탁드립니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="206"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회원가입시
										나이제한이 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<font color="blue">만 14세 이상</font>이면 누구나 무료로 가입하실 수 있습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="607783"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">외국인도
										가입이 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									외국인 회원가입의 경우, 국내 거주가 인증 된(외국인 등록번호가 있는)외국인에 한해,<br> 본인 명의
									휴대전화로 인증 후 CJ ONE 이용약관 동의 및 개인정보 입력(ID와 패스워드 생성)을 통해 가입 하실 수
									있습니다.<br> <br> 만일, 웹사이트를 통해 회원가입이 되지 않을 경우 CJ ONE
									고객센터(1577-8888, 평일 09시~18시)를 통해 문의 부탁드립니다.
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">ID/PW 분실</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="184"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비밀번호를
										잊어버렸어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									회원ID와 비밀번호를 잊어버렸을 경우 CJmall 로그인 페이지에 있는 ID 찾기와 비밀번호 찾기를 이용하시면
									됩니다.<br> <br> ① 본인 인증의 경우 본인 명의로 된 휴대폰 본인 인증과 아이핀 인증이
									모두 가능하며 전체 아이디를 확인하실 수 있습니다.<br> <br> ② 등록한 이메일찾기 혹은
									등록한 휴대폰번호로 찾기의 경우 회원가입시 등록한 정보로 인증한 후 아이디를 확인하실 수 있습니다.<br>
									<br> <font color="blue">만약, 입력사항이 부정확하여 오류가 발생될 경우
										고객센터(☎1644-2525)로 문의하여 주시기 바랍니다.</font><br> <br> <a
										href="https://base.cjmall.com/p/page/account/findPwGate"
										target="_self"><font color="red">비밀번호찾기 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/page/account/findPwGate"
										target="_self"><font color="red">비밀번호찾기 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="183"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">아이디를
										잊어버렸어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									회원ID와 비밀번호를 잊어버렸을 경우 CJmall 로그인 페이지에 있는 ID 찾기와 비밀번호 찾기 를 이용하시면
									됩니다.<br> <br> 아이디 찾기는 여러가지 수단을 통해 통해 이용이 가능합니다.<br>
									본인 인증의 경우 본인 명의로 된 휴대폰 본인 인증과 아이핀 인증이 모두 가능하며 전체 아이디를 확인하실 수
									있습니다.<br> &nbsp;<br> 간편 인증의 경우 이름/생년월일/휴대폰번호만으로 간편하게
									인증이 가능하나 아이디의 일부가 마스킹(*)되어 표시됩니다.<br> <br> 등록한 이메일찾기
									혹은 등록한 휴대폰번호로 찾기의 경우 회원가입시 등록한 정보로 인증한 후 아이디를 확인하실 수 있습니다.<br>
									<br> <font color="blue">만약, 입력사항이 부정확하여 오류가 발생될 경우
										고객센터(☎1644-2525)로 문의하여 주시기 바랍니다.</font><br> <br> <a
										href="https://base.cjmall.com/p/page/account/findId"
										target="_self"><font color="red">아이디찾기 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/page/account/findId"
										target="_self"><font color="red">아이디찾기 모바일 바로가기</font></a>
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">개인정보변경</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="186"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">개명으로인해
										이름변경이되었는데 변경할수있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">실명이 변경된 경우 고객센터(1644-2525) 또는 1:1문의로
									변경요청해 주시면 됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="185"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">개인정보를
										변경하고 싶어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									개인정보 변경은 로그인 후 [마이존] &gt; [정보수정]를 통해 변경이 가능합니다.<br> 고객님의
									개인정보는 언제든지 수정이 가능하며 수정된 사항은 수정 즉시 반영되고 있습니다.<br> <br>
									또한 고객님의 주소 및 연락처는 상품의 정확한 배송을 위해 반드시 필요한 정보이므로<br> 변경사항이
									발생했을 경우 반드시 수정해 주시기 바랍니다.<br> <br> <a
										href="https://base.cjmall.com/p/page/account/myInformation"
										target="_self"><font color="red">개인정보수정 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/page/account/myInformation"
										target="_self"><font color="red">개인정보수정 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="187"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">이메일이나
										SMS의 마케팅정보 수신거부는 어떻게하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									이메일이나 휴대폰 문자서비스에 대한 마케팅 정보에 대해서 수신 거부하는 방법은 로그인 후 [마이존] &gt;
									[개인정보수정] 메뉴에 접속하신 후 수신거부하고 싶은 수단을 변경해주세오.<br> <br> <br>
									<a href="https://base.cjmall.com/p/page/account/myInformation"
										target="_self"><font color="red">개인정보수정 PC 바로가기</font></a><br>
									<a href="https://base.cjmall.com/m/page/account/myInformation"
										target="_self"><font color="red">개인정보수정 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="188"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">핸드폰
										인증번호 받기가 되지 않아요. 어떻게 해야 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									핸드폰 인증번호를 받기 위해서는 CJmall 가입 고객님의 주민번호, 성명과 핸드폰 소유자의 주민번호, 성명이
									일치하여야 합니다.<br> 본인 소유의 핸드폰이 아닌 경우 고객센터(☎1644-2525)로 문의 바랍니다
								</div></li>
							<li class="_faqTitle" data-bbsno="189"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">다른사람이름으로
										CJ오쇼핑의 메일이 오고있어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									당사에서는 고객님의 회원 정보에 등록되어 있는 주소로 이메일을 발송하고 있으나<br> 간혹 잘못 등록된
									정보로 인해 다른 분의 이름으로 발송된 이메일을 받는 사례가 발생하고 있습니다.<br> 이 경우 당사
									고객센터(☎1644-2525) 또는 [1:1문의작성]<br> 로 문의주시면 신속히 처리 해드리겠습니다.<br>
									<br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">탈퇴</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="208"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회원
										탈퇴는 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJmall PC 로그인 후 마이존&gt; [회원 탈퇴] 메뉴를 통해 고객님께서 직접 처리할 수 있습니다.<br>
									<br> <a
										href="https://base.cjmall.com/p/page/account/withdrawal"
										target="_self"><font color="red">회원탈퇴 PC바로가기</font></a><br>
									<br> <br> [회원 탈퇴시 유의점]<br> - CJ ONE 통합회원의 경우 <font
										color="blue">CJ ONE사이트에서 탈퇴(약관동의철회)처리를 진행</font>하셔야합니다.<br>
									- 회원 아이디로 등록되어 있는 적립금, 할인쿠폰, CJ ONE 포인트는 자동 소멸됩니다.<br> -
									회원 탈퇴 시 CJ오쇼핑이 운영하고 있는 TV쇼핑, 카탈로그, CJmall 등에서 동시 회원탈퇴 됩니다.<br>
									- 회원 탈퇴 후 재가입 하는 경우에도 신규가입혜택(할인쿠폰 등)은 적용되지 않으며 신규회원 대상 이벤트에 응모할
									수 없습니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="210"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회원탈퇴가
										되지 않는 경우 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문하신 상품이 배송진행 중이거나 반품처리 등이 완료되지 않은 경우에는 탈퇴 처리가 불가하며,<br>
									예치금, 상품권의 잔액이 남아있는 경우에는 잔액을 회원 본인 명의 계좌로 환불받으신 후 탈퇴처리가 가능합니다.<br>
									탈퇴 후 재가입은 가능하나 기존 아이디로 가입은 불가능할 수 있습니다.<br> <br> 자세한
									사항은 고객센터 [1:1문의작성] 또는 CJmall 고객센터(1644-2525)로 문의주십시오.<br>
									<br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">[1:1문의작성 PC 바로가기]</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">[1:1문의작성 모바일 바로가기]</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="209"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">탈퇴
										후 재가입은 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									다른 고객님이 사용 중이 아니라면 재사용 가능합니다.<br> (단, <font color="blue">
										사용 중 아이디라면 다른 아이디로 재가입</font>하셔야 합니다.)
								</div></li>
						</ul>

					</div>
					
					<div class="_faqListTemplateContainer tabcontent" id='5'>
						<!-- 검색어가 있을경우 -->

						<!-- 검색어가 없을 경우 -->
						<div class="faq_keyword">
							<span class="txt_keyword">상품문의</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="211"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품에
										대한 문의는 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품에 대해 궁금한 점이 있으시면 해당 상품 페이지 내 ‘Q&amp;A’ 탭을 이용해주세요. 질문을 올려주시면
									내부 담당자나 협력사, 해당 상품을 구매한 고객이 확인 후 답변을 드립니다.<br> <br> <strong>[상품
										질문 작성 방법]</strong><br> ① 상품 화면 아래쪽 탭에서 [Q&amp;A]를 선택하세요.<br>
									② [질문하기] 버튼을 누른 후 열리는 질문입력창에 질문을 입력해주세요<br> ③ 문의할 내용을 모두
									작성한 후 [등록] 버튼을 선택하면 질문이 정상적으로 등록됩니다.<br> <br> <font
										color="blue">※배송, 교환 및 반품, 추가 요구사항 등에 대한 문의는 개인정보 유출우려가
										있으므로 [고객센터]&gt; [1:1 문의작성]를 이용해주세요</font><br> <br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="212"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">구입한
										상품의 A/S는 어떻게 받을 수 있어요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									구입한 상품의 A/S는 [고객센터] &gt; [1:1 문의작성] 또는 고객센터(☎ 1644-2525)로 문의해
									주시기 바랍니다.<br> <br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="213"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송된
										상품과 CJmall 상품설명이 달라요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님께 불편을 드려 죄송합니다. 해당상품 포장, 배송하는 과정에서 발생된 문제일 가능성이 있습니다. 번거롭더라도
									[고객센터] &gt; [1:1 문의작성] 또는 고객센터(☎ 1644-2525)로 문의해 주시기 바랍니다.<br>
									<br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
							<li class="_faqTitle" data-bbsno="214"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJmall에
										상품설명이 잘못되어 있어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									잘못된 정보로 불편을 드려 죄송합니다. 번거롭더라도 [고객센터]&gt; [1:1 문의작성] 에 잘못된 정보를
									남겨주시면 빠른 시간내에 확인 후 처리하겠습니다.<br> <br> <a
										href="https://base.cjmall.com/p/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/customercenter/oneToOneQnaWrite"
										target="_self"><font color="red">1:1문의작성 모바일 바로가기</font></a>
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">상품평</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="215"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품평은
										어떻게 작성하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<div style="text-align: center;">
										<!-- Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__") -->
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0727_cs_comment.jpg">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/p/myzone/commentAboutProductList#1"
											target="_self">상품평 작성/조회 바로가기</a>
									</div>
									<br> &nbsp;
								</div></li>
							<li class="_faqTitle" data-bbsno="219"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품평을
										쓰면 CJ ONE 포인트는 언제, 얼마나 지급되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									구매하신 상품에 대해 상품평을 쓰시면 작성일 제외 4일째 (주말, 공휴일 포함) 일괄 부여됩니다. 한줄,
									프리미엄, 포토 상품평을 모두 등록하시면 CJ ONE 포인트 240P까지 지급됩니다.<br> <br>
									<strong>[상품평 작성 보상]</strong><br> - 한줄 상품평 : 10P(5자 이상)<br>
									- 프리미엄 상품평 : 150P(50자 이상) + 80P(포토 추가)<br> * 작성 후 4일 후에
									포인트가 지급되며 상품평 작성 및 CJ ONE 포인트를 지급받기 위해서는 [CJONE 통합회원가입]이 필요합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="216"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품
										구매후 상품평 작성은 언제까지 해야하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품평은 <font color="blue">주문일로부터 180일 이내</font>에만 작성 가능합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="217"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품을
										구매한 후 언제부터 상품평을 작성할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품평은 해당 상품이 배송시작된 이후부터 작성하실 수 있습니다. 해당 상품의 주문내역에서 <font
										color="blue">'배송중'</font> <font color="blue">'배송완료'</font> 상태일
									때 [상품평 작성] 버튼을 누르면 상품평 작성 페이지로 이동합니다.
								</div></li>
							<li class="_faqTitle" data-bbsno="220"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">작성한
										상품평을 수정/삭제하고 싶어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님께서 작성하신 게시글(상품평 포함)은 직접 수정/삭제가 가능합니다.<br> 회원탈퇴, 분실등의
									사유로 직접 수정/삭제가 불가능하신 경우 당사 고객센터(☎1644-2525)를 통하여 게시글 수정/삭제를 요청하실
									수 있습니다.<br> <br> <font color="blue">게시글 삭제시,
										부여되었던 CJ ONE 포인트는 차감됩니다.</font><br> <br> <strong>[삭제
										가능대상]<br> ※[인터넷 자기게시물 접근배제요청권 가이드라인]에 의거함
									</strong><br> - 자기 게시물에 댓글이 달려, 게시물 내용을 인터넷에서 삭제하기 어려운 경우<br>
									- 회원 탈퇴 또는 1년간 계정 미사용 등으로 회원정보가 파기됨에 따라, 이용자 본인이<br> 직접
									삭제하기 어려운 게시물인 경우<br> - 회원 계정정보를 분실하여, 이용자 본인이 삭제하기 어려운 경우<br>
									- 게시판 관리자가 사업의 폐지등으로 사이트 관리를 중단한 경우<br> (검색서비스 사업자에 대해서
									검색목록 배제의 방법을 접근배제를 요청)<br> - 사자(死者)가 생전에 접근배제요청권의 행사를 위임한
									지정인 또는 유족이 사자의 인터넷 게시물에 대한 접근배제를 요청하는 경우<br> - 게시판 관리자가
									게시물 삭제 권한을 제공하지 않아, 이용자가 스스로 게시물을 삭제할 수없는 경우
								</div></li>
							<li class="_faqTitle" data-bbsno="218"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">내가
										작성한 상품평을 어디서 확인하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<strong>[작성한 상품평 확인 방법]</strong><br> ▶ 마이존&gt; [상품평 작성/조회]
									페이지&gt; [내가 작성한 상품평] 탭에서 확인<br> ▶ 해당 상품 상세 페이지 &gt; [상품평]
									탭에서 확인<br> <br> <br> <a
										href="https://base.cjmall.com/p/myzone/commentAboutProductList"
										target="_self"><font color="red">상품평 작성/조회 PC바로가기</font></a><br>
									<a
										href="https://base.cjmall.com/m/myzone/commentAboutProductList"
										target="_self"><font color="red">상품평 작성/조회 모바일 바로가기</font></a><br>
									<br> <span style="color: rgb(0, 0, 255);">단,
										식품/건강식품 등의 제품은 타인의 주관적인 의견으로 인하여 상품의 기능이나 효과 등에 오해가 있을 수 있기에
										작성하신 상품평은 내용을 노출하지 않고 별점만 노출하고 있습니다. (상품평 CJ ONE 포인트는 정상적으로
										부여됩니다)</span>
								</div></li>
						</ul>

					</div>
					
					<div class="_faqListTemplateContainer tabcontent" id='6'>
						<!-- 검색어가 있을경우 -->

						<!-- 검색어가 없을 경우 -->
						<div class="faq_keyword">
							<span class="txt_keyword">상품문의</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="56"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">원하는상품
										방송시간을 문자로 받고 싶어요</strong> <span class="ico_arr">닫기</span>
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
									<br>&nbsp;
								</div></li>

							<li class="_faqTitle" data-bbsno="62"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">방송 편성표를 미리 볼 수 있나요?</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									오쇼핑라이브 : CJmall &gt; TV쇼핑 &gt; [편성표] 오쇼핑플러스 : CJmall &gt; TV쇼핑
									&gt; 오쇼핑플러스 &gt; [편성표] 통해 조회 가능합니다. ※오쇼핑라이브 편성표는 최근 한 달간 방송된
									상품과 오늘 이후 3주간 방송 예정인 상품만 검색됩니다.<br> <br> <a
										href="http://display.cjmall.com/p/tv/tvSchedule?broadType=live"
										target="_self"><font color="red">[편성표 PC 바로가기]</font></a><br>
									<a
										href="http://display.cjmall.com/m/tv/tvSchedule?broadType=live"
										target="_self"><font color="red">[편성표 모바일 바로가기]</font></a>
								</div></li>

							<li class="_faqTitle" data-bbsno="55"><a
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
								</div></li>

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
								<div class="cont_faq">방송알림은 재방송일 경우 알리미가 전송되지 않으며 CJmall의
									상품 정보와 쇼핑뉴스 수신에 동의 하신 경우에만 전송됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="269"><a
								class="link_cont _faqContents" href="#"> <strong
									class="tit_cont2">원하는 상품의 다음 방송 시간을 알고 싶어요</strong> <span
									class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									편성표에서는 오늘을 기준으로 5일전, 5일후 총 11일 동안의 편성 상품을 확인하실 수 있습니다.<br>
									오늘 이후 3주간 방송 예정인 상품은 상품 상세페이지 내에서방송 예정 일자를 확인하실 수 있으며,
									[방송알림신청]을 통해 방송 전 미리 안내받을 수 있습니다.<br> 방송알림은 CJmall &gt;
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
										target="_self"><font color="red">[편성표 모바일 바로가기]</font></a>
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
									오쇼핑라이브 편성정보를 CJmall &gt; TV쇼핑 &gt; 편성표 &gt; [편성표 메일로 받기] 신청을 통해
									이메일로 안내 받으실 수 있습니다.<br> <br> 단, 이메일 수신에 동의 하신 경우에만
									전송됩니다.<br> <br> <a
										href="http://display.cjmall.com/p/tv/tvSchedule?broadType=live"
										target="_self"><font color="red">편성표 PC 바로가기</font></a><br>
									<a
										href="http://display.cjmall.com/m/tv/tvSchedule?broadType=live"
										target="_self"><font color="red">편성표 모바일 바로가기</font></a>
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
	<script>
        function openPage(evt, pageNumber){
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for(i=0;i<tabcontent.length;i++){
                tabcontent[i].style.display="none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for(i=0;i<tablinks.length;i++){
                tablinks[i].className=tablinks[i].className.replace(" on", "");
            
            }
            document.getElementById(pageNumber).style.display="block";
            evt.currentTarget.className += " active";
        }
        document.getElementById("defaultOpen").click();
    </script>
</body>
</html>