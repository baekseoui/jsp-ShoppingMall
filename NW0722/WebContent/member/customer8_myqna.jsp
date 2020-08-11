<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<link rel="stylesheet" href="../css/myqna.css">

</head>
<body>
	
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
								<li><a href="customer7_1by1.jsp" class="service_a2"
									spcid="CUST____main__board__">고객센터 문의하기</a></li>
								<li><a href="myqna_view.so" class="service_a2"
									spcid="CUST____main__board__">나의 문의 내역</a></li>

							</ul></li>
						<!-- <li>
                    <strong class="tit_sub">개인정보</strong>
                    <ul class="list_snb_sub">
                        <li>
                            <a href="#" class="service_a2">개인정보 이용내역</a>
                        </li>
                    </ul>
                </li> -->
					</ul>
					<!-- <div class="cs_bnr">
                <span class="link_bnr1"><strong>070-7947-7090~2</strong>수화상담 고객센터</span>
                <span class="link_bnr2"><strong>1644-2525(유료)</strong>CJmall 고객센터 <em>월~금 8:30~20:00<br>(토/일/공휴일 휴무)</em></span>
            </div>-->
				</div>
			</div>
			<div id="content">
				<h1 id="qna_head">나의 문의 내역</h1>
				<div class="board_qna">
					<div id="qnaList-wrapper">
						<table cellspacing="0" border="0" class="tb_board tb_qna">
							<colgroup>
								<col width="9%">
								<col width="13%">
								<col width="13%">
								<col width="52%">
								<col width="13%">
							</colgroup>
							<thead>
								<tr class="">
									<th scope="col">번호</th>
									<th scope="col">문의종류</th>
									<th scope="col">답변상태</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody>
								<%--게시글 테이블 불러오는 코드 삽입--%>
								<c:forEach items="${bProductDtos }" var='bProductDtos' varStatus='status'>
									<c:set var="bGroup" value="${bProductDtos.boardGroup }" />
									<tr class="item">
										<td>${bProductDtos.rn }</td>
										<td>${bProductDtos.boardOption }</td>
										<td>${bProductDtos.boardAnswered }</td>
										<td>${bProductDtos.boardTitle }</td>
										<td><c:set var='dateValue' value="${bProductDtos.boardDate}"/>
										${fn:substring(dateValue,0,10)}</td>
									</tr>
									<tr class="hide">
										<td colspan="3">
											<div class="item_name">
												<!-- 상품명 클릭시 해당 상품 상세페이지 이동 -->
												<a href="../productDetails/productDetails_view.po?productId=${bProductDtos.productID}">${bProductDtos.productName }</a>
											</div>
											<div class="item_img">
												${bProductDtos.picture }
											</div>
										</td>
										<td colspan="3">
											<div class="q-cus">
												<span class="icon-q">Q</span> ${bProductDtos.boardContent }
											</div>
											<c:choose>
												<c:when test="${bProductDtos.boardAnswered ne '검토중'}">
													
														<div class="a-sel">
															<span class="icon-a">A</span>
															<c:forEach items="${replyDtos }" var='replyDtos' varStatus='status1'>
															<c:set var="rBgroup" value="${replyDtos.boardGroup }" />
															<c:if test="${bGroup == rBgroup }">
															${replyDtos.boardContent }
															</c:if>
															</c:forEach>
														</div>
														<p class="reginfo">
															<span class="wh">판매자의 답변</span> <span class="date">등록일 :
																<em>
																<c:forEach items="${replyDtos }" var='replyDtos' varStatus='status1'>
																<c:set var="rBgroup" value="${replyDtos.boardGroup }" />
																<c:if test="${bGroup == rBgroup }">
																	${replyDtos.boardDate}
																</c:if>
																</c:forEach>
																</em>
															</span>
														</p>
												</c:when>
												<c:otherwise>
													
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						<!--pagination-->
			    		<div class="pagination">
			    			<ul>
			    				<li><a href="myqna_view.so?page=${bPageDto.firstPageNum}&pageDataCount=${bPageDto.pageDataCount}">&laquo;</a></li>
			    			
						        <c:forEach var="i" begin="${bPageDto.startPageNum }" end="${bPageDto.endPageNum }" step="1">
						        	<c:choose>
						        	<c:when test="${i eq 0 }">
						        		<li> <a href="#">${i}</a></li>
						        	</c:when>
									<c:when test="${i eq bPageDto.currentPageNum }">
										<li > <a style="color:#DA006B;font-weight:700;" href="myqna_view.so?page=${i}&pageDataCount=${bPageDto.pageDataCount}">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li> <a href="myqna_view.so?page=${i}&pageDataCount=${bPageDto.pageDataCount}">${i}</a></li>
									</c:otherwise>
									</c:choose>
								</c:forEach>
						    
						        <li><a href="myqna_view.so?page=${bPageDto.lastPageNum}&pageDataCount=${bPageDto.pageDataCount}">&raquo;</a></li>
			      			</ul>
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
		</div>
		<div id="footer">
			<jsp:include page="../section/footerMain.jsp" />

		</div>
	</div>
</body>
</html>