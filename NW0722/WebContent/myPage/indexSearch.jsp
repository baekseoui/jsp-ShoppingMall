<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
	<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/common.cjmall.pc.min.css">
<link rel="stylesheet" href="../css/common.cjos.pc.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" type="text/css" href="../css/page.cjmall.pc.account.min.css" />
<link rel="stylesheet" href="../css/searchqna.css">

<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>
<body>
    <div id="wrap">
        <div id="header">
         	<jsp:include page='../section/headerMain.jsp' />
            
        </div>
        <div id="container">
			<div id="aside">
                <h2 class="tit_cs">
                    <a href="index.io?userID=${userID }">MY PAGE</a>
                </h2>
                <div class="cs_snb">
                    <ul class="list_snb">
                        <li>
                            <strong class="tit_sub">나의 쇼핑정보</strong>
                            <ul class="list_snb_sub">
                                <li>
                                    <a href="AllDelivStat.io" class="link_snb_sub" spcid="MYCJ____left__orderlist__">주문배송 조회</a>
                                </li>
                                <li>
                                    <a href="indexBd.io?userID=${userID }" class="link_snb_sub" spcid="MYCJ____left__retuboardNumlist__">취소/교환/반품 내역</a>
                                </li>
                                <li>
                                    <a href="index8.so" class="link_snb_sub">상품 리뷰</a>
                                </li>
                                <!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__rent__">증빙서류 발급</a>
                                </li> -->
                            </ul>
                        </li>
                        <li>
                            <strong class="tit_sub">나의 계정설정</strong>
                            <ul class="list_snb_sub">
                                <li>
                                    <a href="personalInfoSelect.io?userID=${userID }" class="link_snb_sub _btn_modify">회원정보수정</a>
                                </li>
                                <!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__pinfuse__">회원등급</a>
                                </li> -->
                            </ul>
                        </li>
                        <li>
                            <strong class="tit_sub">고객센터</strong>
                            <ul class="list_snb_sub">
                                <li>
                                    <a href="indexqna1by1_view.so" class="link_snb_sub" spcid="MYCJ____left__zzimall__">1:1 문의내역</a>
                                </li>
                                <li>
                                    <a href="indexSearchQnaList_view.so" class="link_snb_sub" spcid="MYCJ____left__rwlist__">상품 Q&A 내역</a>
                                </li>
                                <!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__tvpush__">공지사항</a>
                                </li> -->
                                <li>
                                    <a href="../member/customer_service.jsp" class="link_snb_sub" spcid="MYCJ____left__foodstp__">FAQ</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
			<div id="content">
				<h1 id="qna_head">상품 Q&A내역</h1>
				<div class="board_qna">
					<div id="qnaList-wrapper">
						<table cellspacing="0" border="0" class="tb_board tb_qna">
							<colgroup>
								<col width="9%">
								<col width="13%">
								<col width="13%">
								<col width="49%">
								<col width="16%">
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
							<c:forEach items="${bProductDtos}" var="bProductDtos">
							<c:set var ="bGroup" value="${bProductDtos.boardGroup }"/>
								<tr class="item">
								<input type="hidden" value="${bProductDtos.boardNum }"/> 
									<td width="8%">${bProductDtos.rn }</td>
									<td>${bProductDtos.boardOption }</td>
									<td>${bProductDtos.boardAnswered }</td>
									<td>${bProductDtos.boardTitle}</td>
									<td><c:set var='dataValue' value="${bProductDtos.boardDate}"/>${fn:substring(dataValue,0,10)}</td>
								</tr>
							
								<tr class="hide">
									<td colspan="3">
										<div class="item_name">
											<!-- 상품명 클릭시 해당 상품 상세페이지 이동 -->
												<a href="../productDetails/productDetails_view.po?productId=${bProductDtos.productID}">${bProductDtos.productName }</a>
										</div>
										<div class="item_img">
											<a href="../productDetails/productDetails_view.po?productId=${bProductDtos.productID}">${bProductDtos.picture }</a>
										</div>
									</td>
									<td colspan="3">
										<div class="q-cus" id="q-cus${bProductDtos.boardNum }">
											<span class="icon-q">Q</span> ${bProductDtos.boardContent}
										</div>
										
											
												<div class="updateWrite" id="updateWrite${bProductDtos.boardNum }">
												<form action="qnaUpdate.so" method="post">
												<input type="hidden" value="${bProductDtos.boardNum }" name="boardNum"/> 
		                     						<textarea cols='100' rows='5' class="edit_text" name="boardContent">${bProductDtos.boardContent}</textarea> &nbsp; &nbsp;
		                     						<a href="indexSearchQnaList_view.so" id="update_ok" onclick="updateOk(${bProductDtos.boardNum })">
		                     						<input type="submit" value="확인"></a>
		                     						</form>
		                       					</div>
		                       					
		                       					
		                       					
                       					<c:choose>
	                       					<c:when test="${bProductDtos.boardAnswered ne '검토중'}">
												<div class="a-sel">
													<span class="icon-a">A</span>
													<c:forEach items="${replyDtos}" var='replyDtos' varStatus='status1'>
														<c:set var="rBgroup" value="${replyDtos.boardGroup}" />
														<c:if test="${bGroup == rBgroup}">
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
										
										<div class="review_control" id="review_control${bProductDtos.boardNum }">
				                       		<a href="javascript:void()" class="update_review" onclick="update(${bProductDtos.boardNum })">수정</a> &nbsp;ㅣ &nbsp;
				                       		<a href= "javascript:void()" onclick = "qnaDelete(${bProductDtos.boardNum})" id="myBtn" class="delete_review">삭제</a>
			                       		</div>
			                       		
			                       		
			                       	<form action="qnaDelete.so" method="post">
										<input type="hidden" value="${bProductDtos.boardNum }" name="boardNum"/> 
			                       		<div id="light${bProductDtos.boardNum}" class="white_content" style="text-align: center;" >삭제하시겠습니까?
			                       		<p style="margin-top: 20px;">
			                       		
				                       		<a href = "indexSearchQnaList_view.so"  onclick = "document.getElementById('light${bProductDtos.boardNum}').style.display='none';document.getElementById('fade${bProductDtos.boardNum}').style.display='none';alert('삭제되었습니다');" >
											   	<span class="light_btn" >
											   	<input type="submit" style="display: inline-block; width: 50px; height: 30px; text-align: center; margin: 0 auto; border:1px solid #767676;" value="확인"></span></a>
				                       		<a href = "indexSearchQnaList_view.so"  onclick = "document.getElementById('light${bProductDtos.boardNum}').style.display='none';document.getElementById('fade${bProductDtos.boardNum}').style.display='none'">
											   	<span class="light_btn">
											   	<input type="button" style="display: inline-block; width: 50px; height: 30px; text-align: center; margin: 0 auto; border:1px solid #767676;" value="취소"></span></a>                       
										
										</p>
										</div>
										<div id="fade${bProductDtos.boardNum}" class="black_overlay"></div>
										</form>
										
									</td>
								</tr>
								</c:forEach>
								
								
							</tbody>
						</table>
						<!--pagination-->
						<div class="pagination">
			    			<ul>
			    				<li><a href="indexSearchQnaList_view.so?page=${bPageDto.firstPageNum}&pageDataCount=${bPageDto.pageDataCount}">&laquo;</a></li>
			    				<c:forEach var="i" begin="${bPageDto.startPageNum}" end="${bPageDto.endPageNum}" step="1">
			    					<c:choose>
			    					<c:when test="${i eq 0 }">
						        		<li> <a href="#">${i}</a></li>
						        	</c:when>
			    					<c:when test="${i eq bPageDto.currentPageNum}">
			    						<li ><a style="color:#DA006B; font-weight:700;" href="indexSearchQnaList_view.so?page=${i}&pageDataCount=${bPageDto.pageDataCount}">${i}</a></li>
			    					</c:when>
			    					<c:otherwise>
			    						<li><a href="indexSearchQnaList_view.so?page=${i}&pageDataCount=${bPageDto.pageDataCount}">${i}</a></li>
			    					</c:otherwise>
			    					</c:choose>
			    				</c:forEach>
			    				<li><a href="indexSearchQnaList_view.so?page=${bPageDto.lastPageNum}&pageDataCount=${bPageDto.pageDataCount}">&raquo;</a></li>
			    			</ul>
			      		</div>
			      		
						<script type="text/javascript">
							$(function() {
								var article = (".tb_board .show");
								$(".tb_board .item  td").click(function() {
									var num = $(this).parent().children().first().val();
									$("#updateWrite"+num).hide();
									$(article).children().eq(1).children().eq(0).show();
									$(article).children().eq(1).children().eq(4).show();
									var myArticle = $(this).parents().next("tr");
									if ($(myArticle).hasClass('hide')) {
										$(article).removeClass('show').addClass('hide');
										$(myArticle).removeClass('hide').addClass('show');
										
									} else {
										$(myArticle).addClass('hide').removeClass('show');
									}
								});
							});
						
							function update(num){
								$("#q-cus"+num).hide();
								$("#review_control"+num).hide();
								if( $("#updateWrite"+num).css("display")=="none" ) $("#updateWrite"+num).show();
							}
							function updateOk(num){
								$("#q-cus"+num).show();
								$("#review_control"+num).show();
								$("#updateWrite"+num).hide();
								alert("수정 되었습니다.")
							}
							function qnaDelete(num){
								document.getElementById('light'+num).style.display='block';
								document.getElementById('fade'+num).style.display='block';
							}
							
							
						</script>
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