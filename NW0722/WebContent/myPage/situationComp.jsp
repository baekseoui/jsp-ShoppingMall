<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<div id="container" style="">
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
						<li><a href="indexBd.jsp" class="link_snb_sub"
							spcid="MYCJ____left__returnlist__">취소/교환/반품 내역</a></li>
						<li><a href="#" class="link_snb_sub">상품 리뷰</a></li>
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
						<li><a href="indexqna1by1.jsp" class="link_snb_sub"
							spcid="MYCJ____left__zzimall__">1:1 문의내역</a></li>
						<li><a href="indexSearch.jsp" class="link_snb_sub"
							spcid="MYCJ____left__rwlist__">상품 Q&A 내역</a></li>
						<!-- <li><a href="#" class="link_snb_sub"
							spcid="MYCJ____left__tvpush__">공지사항</a></li> -->
						<li><a href="../member/customer_service.jsp" class="link_snb_sub"
							spcid="MYCJ____left__foodstp__">FAQ</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div id="content">
		<div class="myzone_shopping type">
			<h1 class="sub_title is_box" id="_order_list_header" style="">주문/배송
				조회</h1>

			<div class="select_search_date _order_list_search">
				<div class="search_selectbx _search_date">
					<select title="선택옵션" class="u_d_sel _search_date_select">
						<option value="1">최근 1개월</option>
						<option value="3">최근 3개월</option>
						<option value="6">최근 6개월</option>
						<option value="2020" startdate="20200101" enddate="20200622">
							2020년 (2020.01.01 ~ 2020.06.22)</option>
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

			<h2 class="blind">주문/배송 조회 결과 목록</h2>
			<div class="_order_list_content order_prod_area" role="list"
				id="_order_listpage">
				<div role="listitem" class="order_prod">
					<a href="https://base.cjmall.com/p/myzone/orderInfo/20200618062534"
						class="link_order" spcid="MYCJ____oderstatus__orddetail__"> <span
						class="num_order" spcid="MYCJ____oderstatus__orddetail__">2020-06-18-062534</span>
						<span class="txt_more" spcid="MYCJ____oderstatus__orddetail__">주문상세보기<span
							class="ic3-6"></span></span>
					</a>
					<div class="box_wrap">

						<div class="box_prod">
							<a
								href="http://display.cjmall.com/p/item/61409113?channelCode=30001001&amp;isMyzone=true"
								spcid="MYCJ____oderstatus__itemimage__"
								class="link_thumb _itemImage"> <img src="61409113L.jpg"
								onerror="this.src='//thumb.cjmall.net/unsafe/150x150/http://itemimage.cjmall.com/goods_images/imageL.jpg'"
								alt="하겐 캣잇 간식미로 고양이장난감 놀이용품 애견용품" class="img_g"
								spcid="MYCJ____oderstatus__itemimage__">
							</a>

							<div class="prod_details">
								<span class="txt_state">배송완료</span> <strong class="tit_prod">
									<a
									href="http://display.cjmall.com/p/item/61409113?channelCode=30001001&amp;isMyzone=true"
									spcid="MYCJ____oderstatus__item__" class="link_cont">하겐 캣잇
										간식미로 고양이장난감 놀이용품 애견용품</a>
								</strong> <span class="info_option"> <span class="txt_count">수량<span
										class="num">1</span></span><span class="txt_bar">|</span> <span
									class="txt_option">단일상품</span><br>

								</span> <em class="num_amount">11,500<span class="txt">원</span></em>

							</div>

							<div class="btn_area">
								<div class="inner">
									<button type="button"
										class="u_btn _delivery_tracking_btn _buttonLinkUrl"
										data-link-value="deliveryTracking">배송조회</button>

									<button type="button"
										class="u_btn _write_comment_btn _buttonLinkUrl"
										data-link-value="writeableProductReview">상품평쓰기</button>

									<button type="button"
										class="u_btn _exchange_btn _buttonLinkUrl"
										data-link-value="exchangeRequestV2">교환신청</button>

									<button type="button" class="u_btn _return_btn _buttonLinkUrl"
										data-link-value="returnRequestV2">반품신청</button>
								</div>
							</div>

						</div>
					</div>
				</div>

				<!-- pagination -->
				<div class="u_pagination">
					<div class="pagination_inner">
						<!-- [D] 이전,다음 버튼 비활성화시 off 클래스 추가 -->
						<!-- [취교반] 페이징 없을 때는 표시 안함 -->
						<strong class="lk_pn on">1</strong>
						<!-- [취교반] 페이징 없을 때는 표시 안함 -->
					</div>
				</div>
				<!-- //pagination -->
			</div>
		</div>
	</div>
</div>