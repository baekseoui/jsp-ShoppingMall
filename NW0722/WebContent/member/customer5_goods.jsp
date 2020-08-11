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
							<!--                     <strong class="tit_sub">개인정보</strong>
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
						<li class="_cat09 on" data-cat="09"><a
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
										있으므로 [고객센터]&gt; [1:1 문의작성]를 이용해주세요</font><br> <br>
								</div></li>
							<li class="_faqTitle" data-bbsno="212"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">구입한
										상품의 A/S는 어떻게 받을 수 있어요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									구입한 상품의 A/S는 [고객센터] &gt; [1:1 문의작성] 또는 고객센터(☎ 1644-0000)로 문의해
									주시기 바랍니다.<br> <br> <a
										href="customer7_1by1.jsp"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="213"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">배송된
										상품과 상품설명이 달라요</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									고객님께 불편을 드려 죄송합니다. 해당상품 포장, 배송하는 과정에서 발생된 문제일 가능성이 있습니다. 번거롭더라도
									[고객센터] &gt; [1:1 문의작성] 또는 고객센터(☎ 1644-0000)로 문의해 주시기 바랍니다.<br>
									<br> <a
										href="customer7_1by1.jsp"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									
								</div></li>
							<li class="_faqTitle" data-bbsno="214"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">홈페이지에
										상품설명이 잘못되어 있어요.</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									잘못된 정보로 불편을 드려 죄송합니다. 번거롭더라도 [고객센터]&gt; [1:1 문의작성] 에 잘못된 정보를
									남겨주시면 빠른 시간내에 확인 후 처리하겠습니다.<br> <br> <a
										href="customer7_1by1.jsp"
										target="_self"><font color="red">1:1문의작성 PC 바로가기</font></a><br>
									
								</div></li>
						</ul>
						<div class="faq_keyword">
							<span class="txt_keyword">상품평</span>
						</div>
						<ul class="list_board">
							<!-- <li class="_faqTitle" data-bbsno="215"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품평은
										어떻게 작성하나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									<div style="text-align: center;">
										Not Allowed Attribute Filtered ( spcid="DTAI____store__sitem-000__")
										<img alt=""
											src="http://image.cjmall.com/event_prd/2019/test/0727_cs_comment.jpg">
										<a class="btn_cs_default"
											href="https://base.cjmall.com/p/myzone/commentAboutProductList#1"
											target="_self">상품평 작성/조회 바로가기</a>
									</div>
									<br> &nbsp;
								</div></li> -->
							<!-- <li class="_faqTitle" data-bbsno="219"><a href="#none"
								class="link_cont _faqContents"> <strong class="tit_cont2">상품평을
										쓰면 포인트는 언제, 얼마나 지급되나요?</strong> <span class="ico_arr">닫기</span>
							</a>
								<div class="cont_faq">
									구매하신 상품에 대해 상품평을 쓰시면 작성일 제외 4일째 (주말, 공휴일 포함) 일괄 부여됩니다. 한줄,
									프리미엄, 포토 상품평을 모두 등록하시면포인트 240P까지 지급됩니다.<br> <br>
									<strong>[상품평 작성 보상]</strong><br> - 한줄 상품평 : 10P(5자 이상)<br>
									- 프리미엄 상품평 : 150P(50자 이상) + 80P(포토 추가)<br> * 작성 후 4일 후에
									포인트가 지급되며 상품평 작성 및 포인트를 지급받기 위해서는 [회원가입]이 필요합니다.
								</div></li> -->
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
									사유로 직접 수정/삭제가 불가능하신 경우 당사 고객센터(☎1644-0000)를 통하여 게시글 수정/삭제를 요청하실
									수 있습니다.<br> <br>  <br> <strong>[삭제
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
									탭에서 확인<br> <br> <br> <br>
									<br> <span style="color: rgb(0, 0, 255);">단,
										식품/건강식품 등의 제품은 타인의 주관적인 의견으로 인하여 상품의 기능이나 효과 등에 오해가 있을 수 있기에
										작성하신 상품평은 내용을 노출하지 않고 별점만 노출하고 있습니다. </span>
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