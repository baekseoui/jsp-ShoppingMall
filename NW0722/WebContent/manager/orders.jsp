<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/order.css"/>
   <title>주문정보</title>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
    	
    	
    	$(document).ready(function(){
            $("#update_btn").click(function(){
                $("#update").stop().toggle();
            })
            
            $(".exit").click(function(){
                $("#update").stop().hide();
            })
            var firstPage = parseInt('<c:out value="${paging.firstPage}"/>');
	  		var lastPage = parseInt('<c:out value="${paging.lastPage}"/>');
			var totalPage = parseInt('<c:out value="${paging.totalPage}"/>');
			var nextPage = lastPage+1;
			var relPage = firstPage-1;
	
			var page ="";															//페이지 만들기
			for(;firstPage<=lastPage;firstPage++){
			    	page +="<a href='Order_select.do?page="+firstPage+"'>";
			        page +="<div class='pages' id='page_check"+firstPage+"'>"+firstPage;
			        page +="</div></a>"
			}
			   $("#post_page").html(page);
			 
			var next="";
			var rel="";
			if(lastPage < totalPage){
				next += "<a href='Order_select.do?page="+nextPage+"'>";
				next += "<div id='next'>next</div></a>";
				$("#next_box").html(next);
				
			}
			if(lastPage>5){
				rel += "<a href='Order_select.do?page="+relPage+"'>";
				rel += "<div id='rel'>rel</div></a>";
				$("#rel_box").html(rel);
			}
        })
        
        
    </script>

    
</head>
<body>

	<header>
		<jsp:include page ="View.jsp" flush="true"/>
	</header>
	
    <div id="wrap">
        <div id="header_11">
            <div><h2>주문정보</h2></div>
        </div>
        <div id="header_22">        
                     
        </div>
        <div id="search">
            <form action="Order_search.do">
                <select id="search_select" name="search_select">
                    <option value="orderid">주문ID</option>
                    <option value="productname">제품명</option>
                </select>
                <input id="search_text" type="text" name="search">
                <input class="search_btn" type="submit" name="search_enter" value="검색">
            </form>
        </div>
           <div class="recode" id="recode">
           	
            <div>주문ID</div>
            <div>고객ID</div>
            <div>주문일자</div>
            <div>배송일자</div>
            <div>제품명</div>
            <div>단가</div>
            <div>주문량</div>
            <div>할인률</div>                  
        </div>
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기 위한 
        form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
        
        <form action="Order_enter.do" method="post">
			<div id="container"> </div>	
			
					<c:forEach items="${AllDtos }" var="Dto">  
						<div class="recode">
							<div>${Dto.orderid}</div>
							<div>${Dto.customerid}</div>
							<div>${Dto.orderdate}</div>	
							<div>${Dto.shippeddate}</div>
							<div>${Dto.productname}</div>
							<div>${Dto.unitprice}</div>
							<div>${Dto.quantity}</div>
							<div>${Dto.discount}</div>
							<div><input type='checkbox' class='checkbox' 
							name="updateData" value="${Dto.orderid }"></div>
							<div class="clear"></div>
						</div>
						
					</c:forEach>
 
           <!-- 한개의 폼태그에서 여러개의 submit을 사용하려면-->
            <!-- 밑에 처럼 만든다 버튼을 누른 name의 값만 
            getparamer로 들어가고 나머지는 null이들어감  -->
			   
            	
          
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