<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		window.open("../board/askqna.jsp", "1:1 문의하기", "width=800, height=800, left=100, top=50"); 
	}
</script>

</head>
<body>
<div class="qnaBoard" style="margin:0 auto;">
	<p class="qnatitle" style="font-size:35px; padding:20px 0 0 0;">상품 문의하기
		<span class="totalQna">
			15<%-- 전체 문의글 개수를 받아오는 코드 삽입 --%>
		</span>
	</p>
	<div class="search-bar">
		<div>
			<form>
			  <select name="searchMenu" class="custom-select searchMenuOption">
			    <option selected>검색 메뉴</option>
			    <option value="title">제목</option>
			    <option value="contents">내용</option>
			  </select>
			</form>
		</div>
		<div>
			<input type="text" class="form-control" placeholder="내용 입력">
		</div>
		<div>
			<button class="btn btn-outline-secondary searchButton" type="submit">검색</button>
		</div>
		<div>
		<form class="cnt-Per-Page">
			<select name="page-scroll" class="custom-select">
				<option selected>15줄</option>
				<option value="2">5줄</option>
				<option value="3">10줄</option>
				<option value="3">20줄</option>
			</select>
		</form>
		</div>
		<div>		
			<button class="btn btn-outline-secondary writeQna" type="button" onclick="writeQNA_Popup()">글쓰기</button>
		</div>
	</div>
	<table class="table qnaTable tb_qna" style="font-size:12pt;">
		<thead class="thead-dark">
			<tr>
				<th>번호</th>
				<th>
					문의종류
					<button type="button" class="btn btn-dark menu-filter" data-toggle="dropdown">
						▽
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">전체</a>
						<a class="dropdown-item" href="#">상품</a>
						<a class="dropdown-item" href="#">배송</a>
						<a class="dropdown-item" href="#">취소</a>
						<a class="dropdown-item" href="#">반품/취소</a>
						<a class="dropdown-item" href="#">교환</a>
						<a class="dropdown-item" href="#">기타</a>
					</div>
				</th>
				<th>답변상태
					<button type="button" class="btn btn-dark menu-filter" data-toggle="dropdown">
						▽
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">전체</a>
						<a class="dropdown-item" href="#">검토중</a>
						<a class="dropdown-item" href="#">답변완료</a>
					</div>
				</th>
				<th>제 목</th>
				<th>문의자</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
		<%--게시글 테이블 불러오는 코드 삽입--%>
		<%
			for(int i=15;i>0;i--){
		%>
			<tr id="accordion<%out.print(i);%>" class="card-link item" data-toggle="collapse" href="#collapse<%out.print(i);%>" <%if((i%5)==0&&(15-i)!=0){%>style="border-top:3px solid lightgray;"<%}%>>
			<td width="8%"><%out.print(i);%></td>
			<td width="15%">교환</td>
			<td width="15%">검토중</td>
			<td width="30%">제목<%out.print(i);%></td>
			<td width="10%">문의자<%out.print(i);%></td>
			<td width="22%">2020-06-25 11:02:55</td>
			</tr>
			<tr id="collapse<%out.print(i);%>" class="collapse hide" data-parent="#accordion<%out.print(i);%>">
				<td colspan="3">
							<div class="item_name">
								<!-- 상품명 클릭시 해당 상품 상세페이지 이동 -->
								<a href="../productIndex/productDetails.jsp">라이프썸 무선 BLDC 선풍기 (LFS-HA27)</a>
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
							<!-- <div class="review_control">
	                       		<a href="indexqnaEdit.jsp" class="update_review">수정</a> &nbsp;ㅣ &nbsp;
	                       		<a href= "javascript:void(<out.print(i);%>)" onclick = "document.getElementById('light<out.print(i);%>').style.display='block';document.getElementById('fade<out.print(i);%>').style.display='block'" 
	                       		id="myBtn" class="delete_review">삭제</a>
                       		</div>
                       		<div id="light<out.print(i);%>" class="white_content" style="text-align: center;" >삭제하시겠습니까?
                       		<p style="margin-top: 20px;">
	                       		<a href = "javascript:void(<out.print(i); %>)"  onclick = "document.getElementById('light<out.print(i);%>').style.display='none';document.getElementById('fade<out.print(i);%>').style.display='none'">
								   	<span class="light_btn" style="display: inline-block; width: 50px; height: 30px; text-align: center; margin: 0 auto; border:1px solid #767676;">확인</span></a>
	                       		<a href = "javascript:void(<out.print(i); %>)"  onclick = "document.getElementById('light<out.print(i);%>').style.display='none';document.getElementById('fade<out.print(i);%>').style.display='none'">
								   	<span class="light_btn"  style="display: inline-block; width: 50px; height: 30px; text-align: center; margin: 0 auto; border:1px solid #767676;">취소</span></a>                         
							</p>
							</div>
							<div id="fade<out.print(i);%>" class="black_overlay"></div> -->
						</td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
	<div class="page_btn">
	<%--페이징--%>
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
		  	<li class="page-item"><a class="page-link" href="#">&lt;</a></li>
		  	<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">&gt;</a></li>
			<li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
		</ul>
		<form class="page-select-scroll">
			<select name="page-scroll" class="custom-select page-scroll-select">
				<option selected>1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
			<span>/ 3</span>
		</form>
	</div>
</div>

</body>
</html>