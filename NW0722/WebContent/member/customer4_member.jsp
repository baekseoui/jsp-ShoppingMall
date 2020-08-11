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
							<!--  <strong class="tit_sub">개인정보</strong>
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
						<li class="_cat01 on" data-cat="01"><a
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
							<span class="txt_keyword">가입</span>
						</div>
						<ul class="list_board">
							<!-- <li class="_faqTitle" data-bbsno="207"><a href="#none"
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
								</div></li> -->
							<li class="_faqTitle" data-bbsno="204"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">
										회원가입은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									회원이 되면 Northwind의 다양한 서비스를 이용하실 수 있습니다.<br> <br>
									[회원 가입 방법]<br> ▶ [LOGIN] > [회원가입]으로 가입<br>
									하나의ID로 사이트의 모든 서비스를 안전하고, 편리하게 이용할 수 있습니다.<br>
									<br>  <a
										href="signupPage.jsp"
										target="_self"><font color="red">회원가입  바로가기</font></a><br>
									
								</div></li>
							<!-- <li class="_faqTitle" data-bbsno="205"><a href="#none"
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
								</div></li> -->
							<!-- <li class="_faqTitle" data-bbsno="607780"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ
										ONE 통합아이디와 CJmall 간편회원의 차이는 무엇인가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									CJ ONE 통합회원 가입 및 CJmall 약관 동의시 동일 ID/비밀번호로 이용 가능합니다.<br> <br>
									[약관 동의 방법]<br> ① CJ ONE 사이트 로그인 &gt; 맨 하단 CJmall 배너 클릭
									&gt; PC홈페이지 클릭 &gt; 약관동의 창 팝업에 동의.<br> ② CJmall 사이트에서
									CJONE아이디/비밀번호로 로그인 &gt; 약관동의 창 팝업에 동의.&nbsp;<br> <br>
									단, CJmall 간편 가입시 CJ ONE 포인트/적립등의 혜택이 제공되지 않습니다.
								</div></li> -->
							<!-- <li class="_faqTitle" data-bbsno="607790"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">CJ
										ONE 통합회원 가입은 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<div style="text-align: center;">
										Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__")
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0727_cs_signup.jpg">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/p/page/account/registerGate"
											target="_self">CJ ONE 통합회원 가입하기</a> <br> &nbsp;
									</div>
								</div></li> -->
							<!-- <li class="_faqTitle" data-bbsno="607784"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">통합회원
										가입하기 약관동의가 안돼요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									약관 동의 방법을 안내 드립니다.<br> <br> ① CJ ONE 사이트 로그인 &gt; 맨
									하단 CJmall 배너 클릭 &gt; PC홈페이지 클릭 &gt; 약관동의 창 팝업에 동의.<br> ②
									CJmall 사이트에서 CJONE 아이디/비밀번호로 로그인 &gt; 약관동의 창 팝업에 동의.&nbsp;<br>
									<br> 지속적으로 약관 동의가 되지 않으실 경우 오류 메세지 확인 후 고객센터로 연락 부탁드립니다.
								</div></li> -->
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
									휴대전화로 인증 후  이용약관 동의 및 개인정보 입력(ID와 패스워드 생성)을 통해 가입 하실 수
									있습니다.<br> <br> 만일, 웹사이트를 통해 회원가입이 되지 않을 경우
									고객센터(1577-0000, 평일 09시~18시)를 통해 문의 부탁드립니다.
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
									회원ID와 비밀번호를 잊어버렸을 경우  로그인 페이지에 있는 ID 찾기와 비밀번호 찾기를 이용하시면
									됩니다.<br> <br> 등록한 아이디와
									이름, 이메일 입력으로 확인 가능하며, 회원가입시 등록한 정보로 인증한 후 비밀번호를 확인하실 수 있습니다.<br>
									<br> <font color="blue">만약, 입력사항이 부정확하여 오류가 발생될 경우
										고객센터(☎1644-0000)로 문의하여 주시기 바랍니다.</font><br> <br> <a
										href="mainPwdFindPage.jsp"
										target="_self"><font color="red"> 비밀번호찾기  바로가기</font></a><br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="183"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">아이디를
										잊어버렸어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									회원ID와 비밀번호를 잊어버렸을 경우 로그인 페이지에 있는 ID 찾기와 비밀번호 찾기 를 이용하시면
									됩니다.<br> <br> 등록한 이름 과 이메일을 입력으로 확인 가능하며,회원가입시 등록한 정보로 인증한 후 아이디를 확인하실 수 있습니다.<br>
									<br> <font color="blue">만약, 입력사항이 부정확하여 오류가 발생될 경우
										고객센터(☎1644-0000)로 문의하여 주시기 바랍니다.</font><br> <br> <a
										href="mainIDFindPage.jsp"
										target="_self"><font color="red">아이디찾기  바로가기</font></a><br>
									
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
								<div class="cont_faq">실명이 변경된 경우 고객센터(1644-0000) 또는 1:1문의로
									변경요청해 주시면 됩니다.</div></li>
							<li class="_faqTitle" data-bbsno="185"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">개인정보를
										변경하고 싶어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									개인정보 변경은 로그인 후 [마이존] &gt; [정보수정]를 통해 변경이 가능합니다.<br> 고객님의
									개인정보는 언제든지 수정이 가능하며 수정된 사항은 수정 즉시 반영되고 있습니다.<br> <br>
									또한 고객님의 주소 및 연락처는 상품의 정확한 배송을 위해 반드시 필요한 정보이므로<br> 변경사항이
									발생했을 경우 반드시 수정해 주시기 바랍니다.<br> <br> 
								</div></li>
							<li class="_faqTitle" data-bbsno="187"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">이메일이나
										SMS의 마케팅정보 수신거부는 어떻게하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									이메일이나 휴대폰 문자서비스에 대한 마케팅 정보에 대해서 수신 거부하는 방법은 로그인 후 [마이존] &gt;
									[개인정보수정] 메뉴에 접속하신 후 수신거부하고 싶은 수단을 변경해주세오.<br> <br> <br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="188"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">핸드폰
										인증번호 받기가 되지 않아요. 어떻게 해야 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									핸드폰 인증번호를 받기 위해서는 가입 고객님의 주민번호, 성명과 핸드폰 소유자의 주민번호, 성명이
									일치하여야 합니다.<br> 본인 소유의 핸드폰이 아닌 경우 고객센터(☎1644-0000)로 문의 바랍니다
								</div></li>
							<li class="_faqTitle" data-bbsno="189"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">다른사람이름으로
										쇼핑의 메일이 오고있어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									당사에서는 고객님의 회원 정보에 등록되어 있는 주소로 이메일을 발송하고 있으나<br> 간혹 잘못 등록된
									정보로 인해 다른 분의 이름으로 발송된 이메일을 받는 사례가 발생하고 있습니다.<br> 이 경우 당사
									고객센터(☎1644-0000) 또는 [1:1문의작성]<br> 로 문의주시면 신속히 처리 해드리겠습니다.<br>
									<br>
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
									로그인 후 마이존&gt; [회원 탈퇴] 메뉴를 통해 고객님께서 직접 처리할 수 있습니다.<br>
									<br> 
								</div></li>
							<li class="_faqTitle" data-bbsno="210"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">회원탈퇴가
										되지 않는 경우 어떻게 하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문하신 상품이 배송진행 중이거나 반품처리 등이 완료되지 않은 경우에는 탈퇴 처리가 불가하며,<br>
									예치금, 상품권의 잔액이 남아있는 경우에는 잔액을 회원 본인 명의 계좌로 환불받으신 후 탈퇴처리가 가능합니다.<br>
									탈퇴 후 재가입은 가능하나 기존 아이디로 가입은 불가능할 수 있습니다.<br> <br> 자세한
									사항은 고객센터 [1:1문의작성] 또는 고객센터(1644-0000)로 문의주십시오.<br>
									<br> 
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
				</div>
			</div>

		</div>
		<div id="footer">
			<jsp:include page="../section/footerMain.jsp" />

		</div>
	</div>
</body>
</html>