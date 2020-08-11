<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
							<!--       <strong class="tit_sub">개인정보</strong>
                    <ul class="list_snb_sub">
                        <li>
                            <a href="#" class="service_a2">개인정보 이용내역</a>
                        </li> -->
					</ul>
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
						<li class="_cat02 on" data-cat="02"><a
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
					<div class="_faqListTemplateContainer">
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
									[로그인] &gt; [마이존] &gt; [주문/배송 조회] &gt; [주문취소]<br>
									 신청 버튼 클릭(직접취소)을 선택하시면 변경하실수 있습니다.<br> <br> <br> <br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="141"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한
										상품옵션(사이즈/색상/결제변경/배송지등)변경하고싶어요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									 배송지와 주문 옵션 변경을 하실 수 있습니다.<br> <br> [로그인]
									&gt; [마이존] &gt; [주문/배송 조회] &gt; [옵션변경]/[결제변경]/[배송지변경]의 경로를 통해
									각각 신청이 가능합니다.<br> <br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="144"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">주문한상품
										"사이즈/색상/결제/배송지등" 변경</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품을 주문한 후 사이즈, 색상, 배송지등의 변경을 원할 경우 아래 방법으로 신청 및 확인이 가능합니다.<br>
									<br> <br> ● [로그인] &gt; [마이존] &gt; [주문/배송 조회]
									&gt; [옵션변경]/[결제변경]/[배송지변경]을 통해 신청하실 수 있습니다.<br> ●
									운영되고 있는 고객센터 (☎1644-0000) 문의하시면 친절한 상담원을 통해 변경하실 수 있습니다.<br>
									
								</div></li>
							
							
							<li class="_faqTitle" data-bbsno="139"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제까지했는데
										주문내역 확인안돼요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문 내역은 [로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이 가능합니다.<br>
									(주문서 작성 후 결제하기를 누르지 않으시면 최종 주문접수가 완료되지 않습니다.)<br> <br>
									
									<br> <br>
								</div></li>
							<li class="_faqTitle" data-bbsno="203"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">비회원도
										상품주문이 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">죄송합니다 현재 비회원은 상품구매가 불가 합니다. <br>
							  추후 추가될 예정이니 조금만 기다려 주시면 감사하겠습니다.</div></li>
							<li class="_faqTitle" data-bbsno="201"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">방금
										상품 주문했습니다. 어디서 주문내역 확인하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문내역은 [로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이 가능합니다.<br>
									또한 주문번호(20080723-******)를 클릭하면 주문한 상품, 결제, 배송 예정일등의 정보 확인이
									가능합니다.<br> <br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="138"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품
										전화로도 구입 할 수 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님께서 인터넷 이용이 불가한 경우 당사 고객센터( ☎1644-0000 ) 상담원을 통해서도 주문이 가능합니다.<br>
									<br>
								</div></li>
							<li class="_faqTitle" data-bbsno="142"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품
										주문 후 어디서 주문내역 확인하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									주문내역은 [로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이 가능합니다.<br>
									또한 주문번호(20080723-******)를 클릭하면 주문한 상품, 결제, 배송 예정일등의 정보 확인이
									가능합니다.<br> <br>
									
								</div></li>
							
							<li class="_faqTitle" data-bbsno="146"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">지금까지의
										주문내역 어디서 확인 할수있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									과거 주문하신 내역은 [로그인] &gt; [마이존] &gt; [주문/배송 조회]를 통해 확인이
									가능합니다.<br> <br>
									
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
									곳이 저희 쇼핑몰이 아니라 해당 간편결제사이기 때문에 저희 쇼핑몰의 무이자 기준과 달리 적용됩니다.<br> <br>
									예) 저희 쇼핑몰에서 10개월 무이자 할부가 가능한 TV가 있는데<br>
									&nbsp;&nbsp;&nbsp;&nbsp; 간편결제를 진행시에는 해당 간편결제사에서 3개월 무이자까지만 진행<br>
									&nbsp;&nbsp;&nbsp;&nbsp; 간편결제수단으로 결제하면서 10개월 할부 선택시, 유이자 적용됨
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
								<div class="cont_faq">네 간편결제는 몰의 무이자 기준과 달리 각각의 간편결제사의
									무이자 행사 기준을 따르게 됩니다. 예를 들어 12개월 무이자 상품을 간편결제를 통해 결제하시는 경우 해당
									간편결제사에서 3개월 무이자 행사만 진행중이라 하면 12개월로 할부개월 설정시 유이자로 진행됩니다.</div></li>
							
							<li class="_faqTitle" data-bbsno="243"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">결제수단이
										특정 카드 하나만 보이는데 왜 그런가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									특정 카드의 제휴몰로 이동하신 경우 또는 특정 카드 결제만 허용된 이벤트인 경우 결제수단이 제한되어 보일
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
									고객센터(1644-0000) 로 연락해주시면 해결해드리겠습니다.
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
									무통장 입금 주문하신 경우, [예금주]는 Northwind 입니다.<br> 꼭 확인 후 입금해주세요
								</div></li>
							<li class="_faqTitle" data-bbsno="192"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">무통장입금
										입금금액 한도가 있나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									1천만원까지만 무통장입금 주문이 가능합니다.<br> 단, 1천만원을 초과하는 금액을 무통장입금 주문하고
									싶으시면 고객센터(1644-0000)로 연락주시면 해제해드립니다.
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
									저희 쇼핑몰에서는 다양한 결제수단을 제공합니다.<br> <br> &nbsp;- 현금성 결제수단 :
									무통장입금, 실시간계좌이체, 예치금, 상품권<br> &nbsp;- 비현금설 결제수단 :
									신용카드, 간편결제(페이코, 페이나우, 시럽페이, 카카오페이), 휴대폰결제<br>
									
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
							
							<li class="_faqTitle" data-bbsno="258"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품할인은
										어떻게 적용되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									상품 상세페이지에서 확인하신 고객맞춤가는 주문시 자동으로 적용됩니다.<br> 고객맞춤가에 포함되는 할인은
									할인쿠폰, 일시불할인, 적립금즉시할인이 자동적용됩니다.<br> <br> 이벤트로 받으신 쿠폰이나
									등급쿠폰, 무료배송 쿠폰,&nbsp; 제휴쿠폰은 고객맞춤가에 반영되지 않으며 수동으로 직접 선택하셔야 합니다.
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
							<li class="_faqTitle" data-bbsno="262"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송비
										쿠폰은 뭔가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									기본 배송비를 할인받으실 수 있는 쿠폰입니다.<br> 한 개의 주문에 여러 개의 배송비가 발생하는 경우
									가장 큰 금액을 차감해드리며, 배송비의 상한선은 없이 전액 면제해드리는 쿠폰입니다.
								</div></li>
	
							<li class="_faqTitle" data-bbsno="267"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송비쿠폰으로는
										도서산간배송비, 빠른배송비는 할인 안되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									배송비쿠폰은 기존 배송비만 할인됩니다.<br> 도서산간배송비, 빠른배송비는 할인수단어 없어 할인이
									불가합니다
								</div></li>
							
							<li class="_faqTitle" data-bbsno="234"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">복수배송은
										몇군데까지 가능한가요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									복수배송은 최대 3곳까지 설정이 가능합니다.<br> 4곳 이상의 복수배송을 원하시면
									고객센터(1644-0000)로 문의해주세요.
								</div></li>
							<!-- <li class="_faqTitle" data-bbsno="607789"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">스마일페이
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__")
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_smilepay.jpg">
								</div></li> -->
							<!-- <li class="_faqTitle" data-bbsno="607787"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">네이버페이
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__")
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_Npay.jpg">
								</div></li> -->
							<!-- <li class="_faqTitle" data-bbsno="607788"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">페이코
										간편결제는 어떻게 이용하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__")
									<img alt=""
										src="http://image.cjmall.com/event_prd/2019/test/0727_cs_payco.jpg">
								</div></li> -->
						</ul>
						<!-- 상품권 -->
						<div class="faq_keyword">
							<span class="txt_keyword">상품권</span>
						</div>
						<ul class="list_board">
							<li class="_faqTitle" data-bbsno="149"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품권으로
										상품구매하면 현금영수증되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">보유하고 있는 상품권으로 상품 구매 시에는 현금영수증 발행이
									가능합니다.</div></li>
							<li class="_faqTitle" data-bbsno="148"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품권구입시
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
									고객센터(1644-0000)로 문의하셔서 입금계좌를 안내받으시기 바랍니다.<br> <br>
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
									바뀝니다.<br> 혹시 30분이 지나도 결제완료로 바뀌지 않으면 고객센터(1644-0000) 로
									연락해주시면 해결해드리겠습니다.
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