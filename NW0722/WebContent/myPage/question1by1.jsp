<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
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
	<h1 id="qna_head">1:1 문의 내역</h1>
	<div class="board_qna">
		<div id="qnaList-wrapper">
			<table cellspacing="0" border="0" class="tb_board tb_qna">
				<colgroup>
					<col width="7%">
					<col width="11%">
					<col width="11%">
					<col width="47%">
					<col width="11%">
					<col width="13%">
				</colgroup>
				<thead>
					<tr class="">
						<th scope="col">번호</th>
						<th scope="col">문의종류</th>
						<th scope="col">답변상태</th>
						<th scope="col">제목</th>
						<th scope="col">문의자</th>
						<th scope="col">등록일</th>
					</tr>
				</thead>
				<tbody>
					<%--게시글 테이블 불러오는 코드 삽입--%>
					<%
						for (int i = 15; i > 0; i--) {
					%>
					<tr class="item">
						<td width="8%">
							<%
								out.print(i);
							%>
						</td>
						<td>교환</td>
						<td>검토중</td>
						<td>제목<%
							out.print(i);
						%></td>
						<td>문의자<%
							out.print(i);
						%></td>
						<td>2020-06-25</td>
					</tr>
					<tr class="hide">
						<td colspan="3">
							<div class="item_name">
								<!-- 상품명 클릭시 해당 상품 상세페이지 이동 -->
								<a href="../productIndex/Beverages.jsp">라이프썸 무선 BLDC 선풍기 (LFS-HA27)</a>
							</div>
							<div class="item_img">
								<img src="http://placehold.it/200X200">
							</div>
						</td>
						<td colspan="3">
							<div class="q-cus">
								<span class="icon-q">Q</span> 판매자님 신선하고 좋은 상품으로 부탁드립니다.
							</div>
							<div class="a-sel">
								<span class="icon-a">A</span> 고객님 안녕하세요.<br> 고객게시판 운영자입니다.<br>
								좋은 상품으로 안전하게 배송해드리겠습니다.<br> 항상 건강 유의하시고 편안한 하루 보내세요.<br>
							</div>
							<p class="reginfo">
								<span class="wh">판매자의 답변</span> <span class="date">등록일 :
									<em>2020-06-30 오후 17:44:50</em>
								</span>
							</p>
							<!--  <div class="review_control">
	                       		<a href="indexqnaEdit.jsp" class="update_review">수정</a> &nbsp;ㅣ &nbsp;
	                       		<a href= "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" 
	                       		id="myBtn" class="delete_review">삭제</a>
                       		</div>
                       		<div id="light" class="white_content">삭제하시겠습니까?
                       		<p >
	                       		<a href = "javascript:void(0)"  onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
								   	<span class="light_btn">확인</span></a>
	                       		<a href = "javascript:void(0)"  onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
								   	<span class="light_btn">취소</span></a>                         
							</p>
							</div>
							<div id="fade" class="black_overlay"></div>-->
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			
			<!--pagination-->
    		<div class="pagination">
		        <a href="#">&laquo;</a>
		        <a href="#">1</a>
		        <a href="#">2</a>
		        <a href="#">3</a>
		        <a href="#">4</a>
		        <a href="#">5</a>
		        <a href="#">6</a>
		        <a href="#">&raquo;</a>
      		</div>
      		
			<script type="text/javascript">
				$(function() {
					var article = (".tb_board .show");
					$(".tb_board .item  td").click(function() {
						var myArticle = $(this).parents().next("tr");
						if ($(myArticle).hasClass('hide')) {
							$(article).removeClass('show').addClass('hide');
							$(myArticle).removeClass('hide').addClass('show');
						} else {
							$(myArticle).addClass('hide').removeClass('show');
						}
					});
				});
			</script>
		</div>
	</div>
</div>