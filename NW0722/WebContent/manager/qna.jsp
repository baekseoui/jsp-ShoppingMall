<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>




<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/qna.css"/>
</head>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    
$(document).ready(function(){
    $("#insert_btn").click(function(){
        $("#insert").stop().toggle();
        $("#update").stop().hide();
    })
    $("#update_btn").click(function(){
        $("#update").stop().toggle();
        $("#insert").stop().hide();
    })
    $(".exit").click(function(){
        $("#update").stop().hide();
        $("#insert").stop().hide();
    })


	var firstPage = parseInt('<c:out value="${paging.firstPage}"/>');
	var lastPage = parseInt('<c:out value="${paging.lastPage}"/>');
	var totalPage = parseInt('<c:out value="${paging.totalPage}"/>');
	var nextPage = lastPage+1;
	var relPage = firstPage-1;

	var page ="";															//페이지 만들기
	for(;firstPage<=lastPage;firstPage++){
	    	page +="<a href='qna_select.do?page="+firstPage+"'>";
	        page +="<div class='pages' id='page_check"+firstPage+"'>"+firstPage;
	        page +="</div></a>"
	}
	   $("#post_page").html(page);
	 
	var next="";
	var rel="";
	if(lastPage < totalPage){
		next += "<a href='qna_select.do?page="+nextPage+"'>";
		next += "<div id='next'>next</div></a>";
		$("#next_box").html(next);
		
	}
	if(lastPage>5){
		rel += "<a href='qna_select.do?page="+relPage+"'>";
		rel += "<div id='rel'>rel</div></a>";
		$("#rel_box").html(rel);
	}
    
})
</script>

<body>

	<header>
		<jsp:include page ="View.jsp" flush="true"/>
	</header>
	
    <div id="wrap">
        <div id="header_11">
            <div><h2>문의내역</h2></div>
        </div>
        <div id="header_22">
            
        </div>
        <div id="search">
            <form action="anwser_search.do"  accept-charset="euc-kr">
                <select id="search_select"  name="search_select" size="1">
                    <option value="answer_type">답변 상태</option>
                    <option value="customerId">사용자ID</option>
                </select>
                <input id="search_text" type="text" name="search">
                <button id="search_button" type="submit" name="search_enter">검색</button>
            </form>
        </div>
        <div class="productList" id="productList">
            <div><p>번호</p></div>
            <div><p>문의 종류</p></div>
            <div><p>답변 상태</p></div>
            <div><p>제목</p></div>
            <div><p>사용자ID</p></div>
            <div><p>날짜</p></div>
            <div><p>선택</p></div>
        </div>
    
	<form action="qna_input.do" method="post">
           <c:forEach items="${qna_dto }" var="qna">
         <div class="productList">
            <div><p>${qna.boardGroup }</p></div>
            <div><p>${qna.boardOption}</p></div>
            <div><p>${qna.boardAnswered}</p></div>
            <div><p><a href="qna_answer.do?boardNum=${qna.boardNum }&boardStep=${qna.boardStep}"> ${qna.boardTitle}</a></p></div>
            <div><p>${qna.customerID}</p></div>
            <div><p>${qna.boardDate}</p></div> 
         <div><input type='checkbox' class='checkbox' name="answer_updateData" value="${qna.boardNum }"></div>
         </div>    
            </c:forEach>
  
  
       
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기위한 form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
                  
            <div id="container"> 
            </div>
                     <!-- 한개의 폼태그에서 여러개의 submit을 사용하려면-->
            <!-- 밑에 처럼 만든다 버튼을 누른 name의 값만 getparamer로 들어가고 나머지는 null이들어감  -->
            <div id="insert">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" name="productId" placeholder="제품번호"><br>
                <input class="sql_text" type="text" name="productName" placeholder="제품명"><br>
                <input class="sql_text" type="text" name="supplierId" placeholder="공급자ID"><br>
                <input class="sql_text" type="text" name="categoryId" placeholder="카테고리ID"><br>
                <input class="sql_text" type="text" name="quantityPerUnit" placeholder="단위당 수량"><br>
                <input class="sql_text" type="text" name="unitPrice" placeholder="단가"><br>
                <input class="sql_text" type="text" name="unitsInStock" placeholder="재고단위"><br>
                <input class="sql_text" type="text" name="unitsOnOrder" placeholder="주문단위"><br>
                <input class="sql_text" type="text" name="reorderLevel" placeholder="재주문점"><br>
                <input class="sql_text" type="text" name="discontinued" placeholder="단종"><br>
                <input class="sql_btn" type="submit" name="product_insert" value="입력하기">
            </div>
            <div id="update">
                <div class="exit">&times;</div>

                <input class="sql_text" type="text" name="updateProductName" placeholder="제품명"><br>
                <input class="sql_text" type="text" name="updateSupplierId" placeholder="공급자ID"><br>
                <input class="sql_text" type="text" name="updateCategoryId" placeholder="카테고리ID"><br>
                <input class="sql_text" type="text" name="updateQuantityPerunit" placeholder="단위당 수량"><br>
                <input class="sql_text" type="text" name="updateUnitPrice" placeholder="단가"><br>
                <input class="sql_text" type="text" name="updateUnitsInStock" placeholder="재고단위"><br>
                <input class="sql_text" type="text" name="updateUnitsOnOrder" placeholder="주문단위"><br>
                <input class="sql_text" type="text" name="updateReorderLevel" placeholder="재주문점"><br>
                <input class="sql_text" type="text" name="updateDiscontinued" placeholder="단종"><br>
      

                <input class="sql_btn" type="submit" name="product_update" value="수정하기">
            </div>
            <div id="submit_box">
                <input type="submit" name="qna_delete" value="삭제">         
            </div>          
        
		</form>
        
        <div id="post_page_box">
           	<div id="rel_box">
                  
            </div>
            <div id="post_page">
            	
            </div>
            <div id="next_box">
            	
            </div>
            <div class="clear"></div>
        </div>
        
    </div>

</body>
</html>