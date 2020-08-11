<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#content{
		width:850px;
	}
</style>
</head>
<body>
	<div id="container">
		<div id="aside">
			<h2 class="tit_cs">
				<a href="#">MY PAGE</a>
			</h2>
			<div class="cs_snb">
				<ul class="list_snb">
					<li><strong class="tit_sub">나의 쇼핑정보</strong>
						<ul class="list_snb_sub">
							<li><a href="AllDelivStat.io"
								class="link_snb_sub" spcid="MYCJ____left__orderlist__">주문배송
									조회</a></li>
							<li><a href="indexBd.io" class="link_snb_sub"
								spcid="MYCJ____left__returnlist__">취소/교환/반품 내역</a></li>
							<li><a href="#" class="link_snb_sub">상품 리뷰</a></li>
							<li><a href="#" class="link_snb_sub"
								spcid="MYCJ____left__rent__">증빙서류 발급</a></li>
						</ul></li>
					<li><strong class="tit_sub">나의 계정설정</strong>
						<ul class="list_snb_sub">
							<li><a href="personalInfoSelect.io"
								class="link_snb_sub _btn_modify">회원정보수정</a></li>
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
			<div id="content">
		<div class="myzone_shopping type">
			<h1 class="sub_title is_box" id="_order_list_header" style="">취소/교환/반품
				조회</h1>

			<div class="select_search_date _order_list_search">
				<div class="search_selectbx _search_date">
					<select title="선택옵션" class="u_d_sel _search_date_select">
						<option value="1">최근 1개월</option>
						<option value="3">최근 3개월</option>
						<option value="6">최근 6개월</option>
						<option value="2020" startdate="20200101" enddate="20200630">
							2020년 (2020.01.01 ~ 2020.06.30)</option>
						<option value="2019" startdate="20190101" enddate="20191231">
							2019년 (2019.01.01 ~ 2019.12.31)</option>
						<option value="2018" startdate="20180101" enddate="20181231">
							2018년 (2018.01.01 ~ 2018.12.31)</option>
						<option value="2017" startdate="20170101" enddate="20171231">
							2017년 (2017.01.01 ~ 2017.12.31)</option>
						<option value="2016" startdate="20160101" enddate="20161231">
							2016년 (2016.01.01 ~ 2016.12.31)</option>
						<option value="2015" startdate="20150101" enddate="20151231">
							2015년 (2015.01.01 ~ 2015.12.31)</option>
					</select>
				</div>
				<div class="search_prdname">
					<span class="u_ipbx"> <input type="text" class="int"
						id="_search_item" title="상품명 검색" placeholder="상품명을 입력해주세요">
						<label class="lbl"></label>
					</span>
					<button type="button" class="sesarch_btn">
						<span>조회</span>
					</button>
				</div>
			</div>

			<h2 class="blind">취소/교환/반품 조회 결과 목록</h2>
			<div class="_order_list_content order_prod_area" role="list">
				<div class="order_prod_area">
					<div class="notice_bx">
						<p class="notice_empty">
							<span class="ico_empty"></span> 해당 기간에 취소/교환/반품 내역이 없습니다.
						</p>
					</div>
					<ul class="noti_txt">
						<li>취소/교환/반품신청을 찾고 계시나요?</li>
						<li>주문배송조회 또는 주문상세 내역에서 확인 하실 수 있습니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
		</div>
	</div>
</body>
</html>