<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/custom.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="../js/bootstrap.js"></script>

<script type= text/javascript>
	function writeQNA_Popup() { 
		var temp = document.product.session_Id.value;
		if(!temp){
			var link = "../member/mainLoginPage.jsp"
			alert("로그인이 필요합니다.")
			location.href=link;
		}
		
		var url = "../board/askqna.jsp?productId="+document.product.product_Id.value+"&productName="+document.product.product_Name.value;
		window.open(url, "1:1 문의하기", "width=800, height=800, left=100, top=50"); 
	}
	function SetSearchMenuOption() {
		var searchMenuField = $(".searchMenuOption option:selected").val;
		if (serchMenuField == "제목") {
			$(".searchMenuOption").val("boardTitle").prop("selected", true);
		} else if (serchMenuField == "내용") {
			$(".searchMenuOption").val("boardTitle").prop("selected", true);
		}
	}
	function SetPageDataCountOption() {
		var pageDataCountField = $(".pageDataCountOption option:selected").val;
		if (pageDataCountField == 15) {
			$(".pageDataCountOption").val("pageDataCount").prop("selected",
					true);
		} else if (pageDataCountField == 5) {
			$(".pageDataCountOption").val("pageDataCount").prop("selected",
					true);
		} else if (pageDataCountField == 10) {
			$(".pageDataCountOption").val("pageDataCount").prop("selected",
					true);
		} else if (pageDataCountField == 20) {
			$(".pageDataCountOption").val("pageDataCount").prop("selected",
					true);
		}
	}
</script>

</head>
<body>
<form name="product">
	<input type="hidden" value="${productDto.productId }" name="product_Id">
	<input type="hidden" value="${productDto.productName}" name="product_Name">
	<input type="hidden" value="${login_Id}" name="session_Id">
</form>
<div class="qnaBoard" style="margin: 0 auto;">
		<p class="qnatitle" style="font-size: 35px; padding: 20px 0 0 0;">
			상품 문의하기 <span class="totalQna"> ${bSearchDto.totalDataCount }
			</span>
		</p>
		<!-- 검색메뉴 -->
		<div class="search-bar">
			<div>
				<form action="qnaBoard.so" method="post">
					<select name="searchCol" class="custom-select searchMenuOption"
						onchange="SetSearchMenuOption();">
						<option selected>검색 메뉴</option>
						<option value="boardTitle">제목</option>
						<option value="boardContent">내용</option>
					</select> <input type="text" name="searchVal" class="form-control"
						placeholder="내용 입력">
					<button class="btn btn-outline-secondary searchButton"
						type="submit">검색</button>
				</form>
			</div>
			<div>
				<form class="cnt-Per-Page">
					<select name="pageDataCount"
						class="custom-select pageDataCountOption"
						onchange="this.form.submit().SetPageDataCountOption();">
						<option selected>줄변경</option>
						<option value="5">5줄</option>
						<option value="10">10줄</option>
						<option value="15">15줄</option>
						<option value="20">20줄</option>
					</select>
				</form>
			</div>
			<div>
				<button class="btn btn-outline-secondary writeQna" type="button"
					onclick="writeQNA_Popup()">글쓰기</button>
			</div>
		</div>
		<table class="table qnaTable" style="font-size: 12pt;">
			<thead class="thead-dark">
				<tr>
					<th width="8%">번호</th>
					<th width="16%">문의종류
						<button type="button" class="btn btn-dark menu-filter"
							data-toggle="dropdown">▽</button>
						<div class="dropdown-menu">
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=
								&searchVal=">전체</a>
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=boardOption
								&searchVal=상품">상품</a>
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=boardOption
								&searchVal=배송">배송</a>
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=boardOption
								&searchVal=교환/반품/취소">교환/반품/취소</a>
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=boardOption
								&searchVal=기타">기타</a>
						</div>
					</th>
					<th width="14%">답변상태
						<button type="button" class="btn btn-dark menu-filter"
							data-toggle="dropdown">▽</button>
						<div class="dropdown-menu">
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=
								&searchVal=">전체</a>
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=boardAnswered
								&searchVal=검토중">검토중</a>
							<a class="dropdown-item"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
								&pageDataCount=${bSearchDto.pageDataCount }&searchCol=boardAnswered
								&searchVal=답변완료">답변완료</a>
						</div>
					</th>
					<th width="30%">제 목</th>
					<th width="10%">문의자</th>
					<th width="22%">등록일</th>
				</tr>
			</thead>
			<!-- 게시판 내용 -->
			<tbody>
				<c:forEach items="${qnaDtos}" var="qnaDtos" varStatus="bCountNum">
				<c:set var="bGroup" value="${qnaDtos.boardGroup }" />
					<c:choose>
						<c:when test="${bCountNum.index%5==0}">
							
							<tr id="accordion${qnaDtos.boardNum }" class="card-link"
								data-toggle="collapse" href="#collapse${qnaDtos.boardNum }"
								style="border-top: 3px solid lightgray;">
								<td>${qnaDtos.rn}</td>
								<td>${qnaDtos.boardOption }</td>
								<td>${qnaDtos.boardAnswered }</td>
								<td>${qnaDtos.boardTitle}</td>
								<td>${qnaDtos.customerID}</td>
								<td>${qnaDtos.boardDate}</td>
							</tr>
							<!-- <tr id="collapse${dto.boardNum }" class="collapse hide"
								data-parent="#accordion${dto.boardNum }">
								<td class="qna-content" colspan="6">${dto.boardContent }</td>
							</tr> -->
	
							<tr id="collapse${qnaDtos.boardNum }" class="collapse hide"
								data-parent="#accordion${qnaDtos.boardNum }">
								<td colspan="1">
								</td>
								<td colspan="5">
									<div class="q-cus">
										<span class="icon-q">Q</span> ${qnaDtos.boardContent }
									</div> 
									<c:choose>
										<c:when test="${qnaDtos.boardAnswered ne '검토중'}">
											
													<div class="a-sel">
														<span class="icon-a">A</span>
														<c:forEach items="${replyDtos }" var='replyDtos'>
														<c:set var="rBgroup" value="${replyDtos.boardGroup }" />
														<c:if test="${bGroup == rBgroup }">
														${replyDtos.boardContent }
														</c:if>
														</c:forEach>
													</div>
													<p class="reginfo">
														<span class="wh" style="color: black;">판매자의 답변  </span> <span class="date">등록일 	: 
														<em> 
														<c:forEach items="${replyDtos }" var='replyDtos'>
														<c:set var="rBgroup" value="${replyDtos.boardGroup }" />
														<c:if test="${bGroup == rBgroup }">
														${replyDtos.boardDate}
														</c:if>
														</c:forEach>
														</em>
														</span>
													</p>
										</c:when>
									</c:choose>
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr id="accordion${qnaDtos.boardNum }" class="card-link"
								data-toggle="collapse" href="#collapse${qnaDtos.boardNum }">
								<td>${qnaDtos.rn}</td>
								<td>${qnaDtos.boardOption }</td>
								<td>${qnaDtos.boardAnswered }</td>
								<td>${qnaDtos.boardTitle}</td>
								<td>${qnaDtos.customerID}</td>
								<td>${qnaDtos.boardDate}</td>
							</tr>
							<tr id="collapse${qnaDtos.boardNum }" class="collapse hide"
								data-parent="#accordion${qnaDtos.boardNum }">
								<td colspan="1">
								</td>
								<td colspan="5">
									<div class="q-cus">
										<span class="icon-q">Q</span> ${qnaDtos.boardContent }
									</div>
									<c:choose>
										<c:when test="${qnaDtos.boardAnswered ne '검토중'}">
											
													<div class="a-sel">
														<span class="icon-a">A</span>
														<c:forEach items="${replyDtos }" var='replyDtos'>
														<c:set var="rBgroup" value="${replyDtos.boardGroup }" />
														<c:if test="${bGroup == rBgroup }">
														${replyDtos.boardContent }
														</c:if>
														</c:forEach>
													</div>
													<p class="reginfo">
														<span class="wh" style="color: black;">판매자의 답변  </span> <span class="date">등록일 	: 
														<em> 
														<c:forEach items="${replyDtos }" var='rdtos'>
														<c:set var="rBgroup" value="${rdtos.boardGroup }" />
														<c:if test="${bGroup == rBgroup }">
														${rdtos.boardDate}
														</c:if>
														</c:forEach>
														</em>
														</span>
													</p>
										</c:when>
									</c:choose>
								</td>
							</tr>

						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tbody>
		</table>
		<div class="page_btn">
			<%--페이징--%>
			<ul class="pagination">
				<li class="page-item"><a class="page-link"
					href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.firstPageNum }
				&pageDataCount=${bSearchDto.pageDataCount }&searchCol=${bSearchDto.searchCol }
					&searchVal=${bSearchDto.searchVal }">&lt;&lt;</a></li>
				<li class="page-item"><a class="page-link"
					href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.prevPageNum }
				&pageDataCount=${bSearchDto.pageDataCount }&searchCol=${bSearchDto.searchCol }
					&searchVal=${bSearchDto.searchVal }">&lt;</a></li>

				<c:forEach var="i" begin="${bSearchDto.startPageNum }"
					end="${bSearchDto.endPageNum }">
					<c:choose>
						<c:when test="${i eq bSearchDto.currentPageNum }">
							<li class="page-item"><a class="page-link"
								href="#none"><b>${i }</b></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="qnaBoard.so?productID=${bSearchDto.productID }&page=${i }&pageDataCount=${bSearchDto.pageDataCount }
								&searchCol=${bSearchDto.searchCol }&searchVal=${bSearchDto.searchVal }">${i }</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<li class="page-item"><a class="page-link"
					href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.nextPageNum }
				&pageDataCount=${bSearchDto.pageDataCount }&searchCol=${bSearchDto.searchCol }
				&searchVal=${bSearchDto.searchVal }">&gt;</a></li>
				<li class="page-item"><a class="page-link"
					href="qnaBoard.so?productID=${bSearchDto.productID }&page=${bSearchDto.lastPageNum }
				&pageDataCount=${bSearchDto.pageDataCount }&searchCol=${bSearchDto.searchCol }
				&searchVal=${bSearchDto.searchVal }">&gt;&gt;</a></li>
			</ul>
			<!-- 페이지 선택 리스트-->
			<form class="page-select-scroll">
				<select name="page-scroll" class="custom-select page-scroll-select"
					onchange="if(this.value) location.href=(this.value);">
					<c:forEach var="i" begin="${bSearchDto.firstPageNum }"
						end="${bSearchDto.lastPageNum }">
						<option
							value="qnaBoard.so?productID=${bSearchDto.productID }&page=${i }&pageDataCount=${bSearchDto.pageDataCount }
							&searchCol=${bSearchDto.searchCol }&searchVal=${bSearchDto.searchVal }">${i }</option>
					</c:forEach>
				</select> <span>/ ${bSearchDto.lastPageNum }</span>
			</form>
		</div>
	</div>


</body>
</html>