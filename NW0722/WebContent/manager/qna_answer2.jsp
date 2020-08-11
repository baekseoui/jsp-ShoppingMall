<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>




<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/qna_answer.css" />

<style>

tr {
	border: 1px solid #d3d3d3;
}

td {
	border: 1px solid #d3d3d3;
	0px;
}

th {
	background-color: #EFE8E4;
	margine-top: 10px;
	width:105px;
}

.content {
	resize: none;
	margin: 10px;
}

.qna_answer_table {
	width: 1100px;
	margin-left:50px;
	margin-top:20px;
	
}

#qna_answer_div2 {
	margin-top:20px;
	
}

#answer_button {
	margin-left:570px;
}
</style>
</head>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<body>

	<header>
		<jsp:include page="View.jsp" flush="true" />
	</header>


	<div id="wrap">
		<div id="header_11">
			<div>
				<h2>답변수정</h2>
			</div>
		</div>
		<form action="qna_answer2_table.do" method="get" accept-charset="UTF-8">
		<div id="qna_answer_div1">
		
			<c:forEach items="${qna_dto }" var="qna">
				<table class="qna_answer_table">
					<tr id="title">
				
					
						<th>고객ID</th>
						<td>${qna.customerID}
						<input type="hidden" name="boardNum" value="${qna.boardNum }">
						<input type="hidden" name="boardOption" value="${qna.boardOption}">
						<input type="hidden" name="boardAnswered" value="${qna.boardAnswered}">
						<input type="hidden" name="boardTitle" value="${qna.boardTitle}">
						<input type="hidden" name="customerID" value="${qna.customerID}">
						<input type="hidden" name="boardDate" value="${qna.boardDate}">
						<input type="hidden" name="boardContent" value="${qna.boardContent}">
						<input type="hidden" name="boardHit" value="${qna.boardHit}">
						<input type="hidden" name="boardCondition" value="${qna.boardCondition}">
						<input type="hidden" name="orderID" value="${qna.orderID}">
						<input type="hidden" name="boardGroup" value="${qna.boardGroup}">
						<input type="hidden" name="boardStep" value="${qna.boardStep}">
						<input type="hidden" name="boardIndent" value="${qna.boardIndent}">
						<input type="hidden" name="boardDel" value="${qna.boardDel}">
						<input type="hidden" name="boardProduct" value="${qna.productID}">
						<input type="hidden" name="boardEtc1" value="${qna.boardEtc1}">
						</td>
						
					</tr>

					<tr>
						<th>제목</th>
						<td>${qna.boardTitle}</td>
						
					</tr>
					<tr>
						<th>날짜</th>
						<td>${qna.boardDate}</td>
						
					</tr>
					<tr>
						<th>문의종류</th>
						<td>${qna.boardOption}</td>
						
					</tr>



					<tr>
						<th>답변내용</th>
						<td><input type="text" name="update_content" value="${qna.boardContent }" style='width: 600px; height: 200px; background-color:transparent;border:0 solid black;'></td>

					</tr>


				</table>
				<div id="answer_button">
			<input type="submit" name="answer_button" value="답변수정">
		</div>
			</c:forEach>
		
		</div>
		</form>	
		<!--    	<div id="qna_header">
       		<div class="answer_left_box" style="">
	        	<div><p>사용자ID</p></div> 
	            <div><p>문의 종류</p></div> 
	            <div><p>제목</p></div>
	            <div><p>날짜</p></div> 
	            <div><p>내용</p></div>
	            
	            
            </div> -->
		<%--     <div class="answer_right_box">
            
	            <div>${qna.customerID}</div>
	            <div>${qna.boardOption}</div>
	            <div>${qna.boardTitle}</div>
	            <div>${qna.boardDate}</div>
	            <div>${qna.boardContent }</div>
	       
	        </div>    
        </div> --%>

		
	</div>
	

</body>
</html>