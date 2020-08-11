<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="aside">
	<h2 class="tit_cs">
		<a href="index.jsp">MY PAGE</a>
	</h2>
	<div class="cs_snb">
		<ul class="list_snb">
			<li><strong class="tit_sub">나의 쇼핑정보</strong>
				<ul class="list_snb_sub">
					<li><a href="index6.jsp" class="link_snb_sub"
						spcid="MYCJ____left__orderlist__">주문배송 조회</a></li>
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__returnlist__">취소/교환/반품 내역</a></li>
					<li><a href="index8.jsp" class="link_snb_sub">상품 리뷰</a></li>
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__rent__">증빙서류 발급</a></li>
				</ul></li>
			<li><strong class="tit_sub">나의 계정설정</strong>
				<ul class="list_snb_sub">
					<li><a href="index5.jsp" class="link_snb_sub _btn_modify">회원정보수정</a>
					</li>
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__pinfuse__">회원등급</a></li>
				</ul></li>
			<li><strong class="tit_sub">고객센터</strong>
				<ul class="list_snb_sub">
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__zzimall__">1:1 문의내역</a></li>
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__rwlist__">상품 Q&A 내역</a></li>
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__tvpush__">공지사항</a></li>
					<li><a href="#" class="link_snb_sub"
						spcid="MYCJ____left__foodstp__">FAQ</a></li>
				</ul></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="myzone_review">
		<h2 class="sub_title is_box">상품평 쓰기/조회</h2>
		<div class="u_tabmenu_wrap">
			<ul class="u_tabmenu type_btnst">
				<li class="on _product"><a href="index8.jsp">상품평 쓰기</a></li>
				<li class="_comment"><a href="index9.jsp">내가 쓴 상품평</a></li>
			</ul>
		</div>
		<div class="_commentAboutProductListContainer">
			<jsp:include page="product_evaluation.jsp"></jsp:include>
		</div>
	</div>
</div>
</body>
</html>