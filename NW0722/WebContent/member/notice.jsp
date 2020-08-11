<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>North Wind</title>
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/categoriesPage.css" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="../container/assets/favicon.ico" />
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="../container/css/all.css">
<!-- Filckity -->
<link rel="stylesheet" href="../container/css/flickity.min.css">
<!-- Custom Style -->
<link rel="stylesheet" href="../container/css/style.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/notice.css">
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="contents">
			<div id="content">
				
				<div class="board_qna">
					<h1 id="qna_head">공지사항</h1>
					<div id="qnaList-wrapper">
						<table cellspacing="0" border="0" class="tb_board tb_qna">
							<colgroup>
								<col width="15%">
								<col width="70%">
								<col width="15%">
							</colgroup>
							<thead>
								<tr class="">
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">날짜</th>
								</tr>
							</thead>
							<tbody>
								<%--게시글 테이블 불러오는 코드 삽입--%>
								<c:forEach items="${boardDtos }" var='boardDtos' varStatus='status'>
								<tr class="item">
									<td>${boardDtos.boardNum }</td>
									<td>${boardDtos.boardTitle }</td>
									<td><c:set var='dateValue' value="${boardDtos.boardDate}"/>
										${fn:substring(dateValue,0,10)}</td>
								</tr>
								<tr class="hide">
								<!-- 이미지 넣기 -->
									<!-- <td colspan="3">
										<div class="item_name">
											상품명 클릭시 해당 상품 상세페이지 이동
											<a href="">ㅅ</a>
										</div>
										<div class="item_img">
											<img src="http://placehold.it/200X200">
										</div>
									</td> -->
									<td colspan="4">
										${boardDtos.boardContent }
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
										<li > <a style="color:#DA006B;" href="myqna_view.so?page=${i}&pageDataCount=${bPageDto.pageDataCount}">${i}</a></li>
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
<script src="../container/js/flickity.pkgd.min.js"></script>
<script src="../container/js/easytimer.min.js"></script>
<script src="../container/js/main.js"></script>
</body>
</html>
