<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<link rel="icon" type="image/x-icon"
	href="../container/assets/favicon.ico" />
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/common.cjmall.pc.min.css">
<link rel="stylesheet" href="../css/common.cjos.pc.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet"
	href="../css/page.cjmall.pc.myzone-shopping.min.css">
<link rel="stylesheet" type="text/css"
	href="../css/page.cjmall.pc.account.min.css" />
<link rel="stylesheet"
	href="../css/page.cjmall.pc.myzone-main_v3.min.css">
<style>
	.zero_1{
		margin-left:150px;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page='../section/headerMain.jsp' />
		</div>
		<div id="container">
			<div id="container">
				<div id="aside">
					<h2 class="tit_cs">
						<a href="index.io?userID=${userID }">MY PAGE</a>
					</h2>
					<div class="cs_snb">
						<ul class="list_snb">
							<li><strong class="tit_sub">나의 쇼핑정보</strong>
								<ul class="list_snb_sub">
									<li><a href="AllDelivStat.io"
										class="link_snb_sub" spcid="MYCJ____left__orderlist__">주문배송
											조회</a></li>
									<li><a href="indexBd.io?userID=${userID }"
										class="link_snb_sub" spcid="MYCJ____left__returnlist__">취소/교환/반품
											내역</a></li>
									<li><a href="index8.so" class="link_snb_sub">상품 리뷰</a></li>
									<!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__rent__">증빙서류 발급</a>
                                </li> -->
								</ul></li>
							<li><strong class="tit_sub">나의 계정설정</strong>
								<ul class="list_snb_sub">
									<li><a href="personalInfoSelect.io?userID=${userID }"
										class="link_snb_sub _btn_modify">회원정보수정</a></li>
									<!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__pinfuse__">회원등급</a>
                                </li> -->
								</ul></li>
							<li><strong class="tit_sub">고객센터</strong>
								<ul class="list_snb_sub">
									<li><a href="indexqna1by1_view.so" class="link_snb_sub"
										spcid="MYCJ____left__zzimall__">1:1 문의내역</a></li>
									<li><a href="indexSearchQnaList_view.so" class="link_snb_sub"
										spcid="MYCJ____left__rwlist__">상품 Q&A 내역</a></li>
									<!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__tvpush__">공지사항</a>
                                </li> -->
									<li><a href="../member/customer_service.jsp"
										class="link_snb_sub" spcid="MYCJ____left__foodstp__">FAQ</a></li>
								</ul></li>
						</ul>
					</div>
				</div>

				<div id="content">
					<div class="myzone_wrap">
						<div class="myzone_info_area">

							<!-- 마이존 메인 상단 고객정보 영역 -->
							<div class="_myzoneMainTopContainer">
								<div class="grade_area family">
									<div class="rank_area">
										<span class="rank"></span> 패밀리
									</div>
									<div class="name_area">
										<span class="name"> ${userID } </span>님
									</div>
									<a href="#"
										class="btn_benefit" spcid="MYCJ____cust__bfc__">등급혜택 /
										예상등급</a>
								</div>
							</div>

							<!-- 혜택별 잔액 -->
							<div class="_myzoneMoneyBalanceContainer">
								<div class="benefit_area_v2">
									<ul class="lst_benefit">
										<li><a href="#" spcid="MYCJ____cust__vipdc__"> <span
												class="tit" spcid="MYCJ____cust__vipdc__">VIP 즉시할인</span> <span
												class="bx_num" spcid="MYCJ____cust__vipdc__"> <span
													class="num" spcid="MYCJ____cust__vipdc__">0</span>원
											</span>
										</a></li>
										<li class=""><a href="#" spcid="MYCJ____cust__mileage__">
												<span class="tit" spcid="MYCJ____cust__mileage__">적립금</span>
												<span class="bx_num" spcid="MYCJ____cust__mileage__">
													<span class="num num" spcid="MYCJ____cust__mileage__">0</span>원
											</span>
										</a></li>
										<li class=""><a href="#" spcid="MYCJ____cust__onepnt__">
												<span class="tit" spcid="MYCJ____cust__onepnt__">CJ
													ONE 포인트</span> <span class="bx_num" spcid="MYCJ____cust__onepnt__">
													<span class="num _cjonePoint"
													spcid="MYCJ____cust__onepnt__">0</span>P
											</span>
										</a></li>
										<li><a
											href="#"
											spcid="MYCJ____cust__cpn__"> <span class="tit"
												spcid="MYCJ____cust__cpn__">쿠폰</span> <span class="num num"
												spcid="MYCJ____cust__cpn__">0</span>장
										</a></li>
										<li><a
											href="#"
											spcid="MYCJ____cust__deposit__"> <span class="tit"
												spcid="MYCJ____cust__deposit__">예치금</span> <span
												class="num num" spcid="MYCJ____cust__deposit__">0</span>원
										</a></li>
										<li><a
											href="#"
											spcid="MYCJ____cust__cert__"> <span class="tit"
												spcid="MYCJ____cust__cert__">CJ 상품권</span> <span
												class="num num" spcid="MYCJ____cust__cert__">0</span>원
										</a></li>
									</ul>
								</div>
							</div>

						</div>

						<!-- 주문/배송조회 -->
						<div class="_myzoneOrderShippingCountContainer">
							<div class="myzone_order_area">
								<div class="tit_area">
									<h3 class="tit">주문/배송조회</h3>
									<span>(취소/교환/반품 신청)</span>
								</div>

								<ul class="lst_order">
									<li class="zero_1"><a href="DelivStat0.io"
										spcid="MYCJ____odrh__odrrd__">상품준비중<span class="num"
											spcid="MYCJ____odrh__odrrd__">${orderStat_ready }</span></a></li>
									<li class="zero"><a href="DelivStat1.io"
										spcid="MYCJ____odrh__odrdiv__">배송중<span class="num"
											spcid="MYCJ____odrh__odrdiv__">${orderStat_deliv }</span></a></li>
									<li class="zero"><a href="DelivStat2.io"
										spcid="MYCJ____odrh__odrfins__">배송완료<span class="num"
											spcid="MYCJ____odrh__odrfins__">${orderStat_comp }</span></a></li>
								</ul>
								<ul class="lst_order_state lst_order_state_v2 link_snb_sub">
									<li class="zero"><a href="indexBd.io?userID=${userID }"
										spcid="MYCJ____odrh__cancel__"> <span class="tit"
											spcid="MYCJ____odrh__cancel__">취소</span> <span class="num"
											spcid="MYCJ____odrh__cancel__">${cancel }</span>
									</a></li>
									<li class="zero"><a href="indexBd.io?userID=${userID }"
										spcid="MYCJ____odrh__change__"> <span class="tit"
											spcid="MYCJ____odrh__change__">교환</span> <span class="num"
											spcid="MYCJ____odrh__change__">${change }</span>
									</a></li>
									<li class="zero"><a href="indexBd.io?userID=${userID }"
										spcid="MYCJ____odrh__return__"> <span class="tit"
											spcid="MYCJ____odrh__return__">반품</span> <span class="num"
											spcid="MYCJ____odrh__return__">${back }</span>
									</a></li>
								</ul>

								<a href="DelivStat0.io" class="btn_whole_view"
									spcid="MYCJ____odrh__ordlist__"><span class="blind"
									spcid="MYCJ____odrh__ordlist__">주문/배송 조회</span>전체보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page='../section/footerMain.jsp' />

		</div>
	</div>
</body>
</html>