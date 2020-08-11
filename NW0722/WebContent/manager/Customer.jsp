<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/Customer.css"/>
      <title>Guest</title>
   
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
			    	page +="<a href='Customer_Select.do?page="+firstPage+"'>";
			        page +="<div class='pages' id='page_check"+firstPage+"'>"+firstPage;
			        page +="</div></a>"
			}
			   $("#post_page").html(page);
			 
			var next="";
			var rel="";
			if(lastPage < totalPage){
				next += "<a href='Customer_Select.do?page="+nextPage+"'>";
				next += "<div id='next'>next</div></a>";
				$("#next_box").html(next);
				
			}
			if(lastPage>5){
				rel += "<a href='Customer_Select.do?page="+relPage+"'>";
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
            <div><h2>고객정보관리</h2></div>
        </div>
        <div id="header_22">
        </div>
        <div id="search">
            <form action="customer_search.do">
                <select id="search_select" name="customer_search">
                    <option value="customer_id">아이디</option>
                    <option value="customer_name">고객명</option>
                </select>
                <input id="search_text" type="text" name="customer_val">
                <button id="search_button" type="submit">검색</button>
            </form>
        </div>
        <div class="recode" id="recode">
            <div>고객ID</div>
            <div>고객명</div>
            <div>주소</div>
            <div>연락처</div>
            <div>선택</div>
            <div class="clear"></div>
        </div>
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기위한 form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
        <form action="Customer_Input.do" method="post">                    
            <div id="container">
            <c:forEach items="${dtos}" var="dto">
            		<div class="recode">
						<div>${dto.customerID}</div>
						<div>${dto.contactName}</div>
						<div>${dto.address}</div>
						<div>${dto.phone}</div>
						<div><input type="checkbox" name="data" value="${dto.customerID}"></div>
					</div>
				</c:forEach>
            </div>
            <div id="submit_box">
                <input type="submit" name="input_Name" value="삭제">         
            </div>          
       
            <!-- 한개의 폼태그에서 여러개의 submit을 사용하려면-->
            <!-- 밑에 처럼 만든다 버튼을 누른 name의 값만 getparamer로 들어가고 나머지는 null이들어감  -->
           	<div id="update">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" name="updateData" placeholder="COMPANYNAME"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="CONTACTNAME"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="CONTACTTITLE"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="ADDRESS"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="CITY"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="REGION"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="POSTALCODE"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="COUNTRY"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="PHONE"><br>
                <input class="sql_text" type="text" name="updateData" placeholder="FAX"><br>

                <input class="sql_btn" type="submit" name="input_Name" value="수정">
            </div>
        </form>
        <form action="Customer_Insert.do" method="post">
            <div id="insert">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" name="insertData" placeholder="CUSTOMERID"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="COMPANYNAME"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="CONTACTNAME"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="CONTACTTITLE"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="ADDRESS"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="CITY"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="REGION"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="POSTALCODE"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="COUNTRY"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="PHONE"><br>
                <input class="sql_text" type="text" name="insertData" placeholder="FAX"><br>

                <input class="sql_btn" type="submit" name="insert" value="입력하기">
            </div>
        </form>
        

        <div id="input_box">
            <button id="insert_btn" >입력</button>
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