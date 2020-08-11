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
    <link rel="stylesheet" href="css/products.css"/>
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
	    	page +="<a href='productSelect.do?page="+firstPage+"'>";
	        page +="<div class='pages' id='page_check"+firstPage+"'>"+firstPage;
	        page +="</div></a>"
	}
	   $("#post_page").html(page);
	 
	var next="";
	var rel="";
	if(lastPage < totalPage){
		next += "<a href='productSelect.do?page="+nextPage+"'>";
		next += "<div id='next'>next</div></a>";
		$("#next_box").html(next);
		
	}
	if(lastPage>5){
		rel += "<a href='productSelect.do?page="+relPage+"'>";
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
            <div><h2>제품목록</h2></div>
        </div>
        <div id="header_22">
            <div>전체 제품수<!-- 데이터베이스출력 --> @@@개 </div>
        </div>
        <div id="search">
            <form action="product_search.do" >
                <select id="search_select"  name="search_select" size="1">
                    <option value="productName">제품명</option>
                    <option value="productID">제품번호</option>
                    <option value="categoryID">카테고리번호</option>
                </select>
                <input id="search_text" type="text" name="search">
                <button id="search_button" type="submit" name="search_enter">검색</button>
            </form>
        </div>
        <div class="productList" id="productList">
            <div><p>제품번호</p></div>
            <div><p>제품명</p></div>
            <div><p>공급자 ID</p></div>
            <div><p>카테고리 ID</p></div>
            <div><p>단위당 수량</p></div>
            <div><p>단가</p></div>
            <div><p>재고단위</p></div>
            <div><p>주문단위</p></div>
            <div><p>재주문점</p></div>
            <div><p>단종</p></div>
            <div><p>선택</p></div>   
        </div>
    <!-- public int productID;
	String productName;
	int supplierId;
	int categoryId;
	String quantityPerUnit;
	double unitPrice;
	int unitsInStock;
	int unitsOnOrder;
	int reorderLevel;
	int discontinued;
	String picture; -->
	<form action="product_input.do" method="post">
           <c:forEach items="${dtos }" var="dto">
         <div class="productList">
            <div><p>${dto.productID }</p></div>
            <div><p>${dto.productName}</p></div>
            <div><p>${dto.supplierID}</p></div>
            <div><p>${dto.categoryID}</p></div>
            <div><p>${dto.quantityPerUnit}</p></div>
            <div><p>${dto.unitPrice}</p></div>
            <div><p>${dto.unitsInStock}</p></div>
            <div><p>${dto.unitsOnOrder}</p></div>
            <div><p>${dto.reorderLevel}</p></div>
            <div><p>${dto.discontinued}</p></div>
            <div><input type='checkbox' class='checkbox' name="updateData" value="${dto.productID }"></div>
         </div>    
            </c:forEach>
    <!--  public int productID;
	String productName;
	int supplierId;
	int categoryId;
	String quantityPerUnit;
	double unitPrice;
	int unitsInStock;
	int unitsOnOrder;
	int reorderLevel;
	int discontinued;
	String picture; -->
       
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기위한 form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
                  
            <div id="container"> 
            </div>
                     <!-- 한개의 폼태그에서 여러개의 submit을 사용하려면-->
            <!-- 밑에 처럼 만든다 버튼을 누른 name의 값만 getparamer로 들어가고 나머지는 null이들어감  -->
            <div id="insert">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" name="productID" placeholder="제품번호"><br>
                <input class="sql_text" type="text" name="productName" placeholder="제품명"><br>
                <input class="sql_text" type="text" name="supplierID" placeholder="공급자ID"><br>
                <input class="sql_text" type="text" name="categoryID" placeholder="카테고리ID"><br>
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
                <input class="sql_text" type="text" name="updateSupplierID" placeholder="공급자ID"><br>
                <input class="sql_text" type="text" name="updateCategoryID" placeholder="카테고리ID"><br>
                <input class="sql_text" type="text" name="updateQuantityPerunit" placeholder="단위당 수량"><br>
                <input class="sql_text" type="text" name="updateUnitPrice" placeholder="단가"><br>
                <input class="sql_text" type="text" name="updateUnitsInStock" placeholder="재고단위"><br>
                <input class="sql_text" type="text" name="updateUnitsOnOrder" placeholder="주문단위"><br>
                <input class="sql_text" type="text" name="updateReorderLevel" placeholder="재주문점"><br>
                <input class="sql_text" type="text" name="updateDiscontinued" placeholder="단종"><br>
      

                <input class="sql_btn" type="submit" name="product_update" value="수정하기">
            </div>
            <div id="submit_box">
                <input type="submit" name="product_delete" value="삭제">         
            </div>          
        
		</form>
        <div id="input_box">
            <button id="insert_btn">입력</button>
            <button id="update_btn">수정</button>
        </div>
        
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