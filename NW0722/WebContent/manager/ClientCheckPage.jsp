<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/ClientCheckPage3.css?"/>	
    
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
			    	page +="<a href='ClientCheck_Select.do?page="+firstPage+"'>";
			        page +="<div class='pages' id='page_check"+firstPage+"'>"+firstPage;
			        page +="</div></a>"
			}
			   $("#post_page").html(page);
			 
			var next="";
			var rel="";
			if(lastPage < totalPage){
				next += "<a href='ClientCheck_Select.do?page="+nextPage+"'>";
				next += "<div id='next'>next</div></a>";
				$("#next_box").html(next);
				
			}
			if(lastPage>5){
				rel += "<a href='ClientCheck_Select.do?page="+relPage+"'>";
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
            <div><h2>거래처 정보 확인</h2></div>
        </div>
        <div id="header_22">
        </div>
        <div id="search">
            <form action="ClientCheck_search.do">
                <select id="search_select" name="clientCheck_search">
                    <option value="clientCheck_id">거래처 번호</option>
                    <option value="clientCheck_name">거래처 명</option>
                </select>
                <input id="search_text" type="text" name="clientCheck_val" >
                <button id="search_button" type="submit">검색</button>
            </form>
        </div>
        <div class="recode" id="recode">
            <div>번호</div>
            <div>상 호 명</div>
            <div>연락처</div>
            <div>담당자</div>
            <div>국적</div>
            <div>선택</div>
            <div></div>
        </div>
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기위한 form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
        <form action="ClientCheck_enter.do" method="post">                    
            <c:forEach items="${dtos}" var="dto">
            	<div class="asd" id="asd">      
						<div>${dto.supplierId}</div>
						<div>${dto.companyName}</div>
						<div>${dto.phone}</div>
						<div>${dto.contactName}</div>
						<div>${dto.country}</div>
						<div><input type="checkbox" name="checkData" value="${dto.supplierId}"></div>
					</div>
				</c:forEach>
                              
            <div id="container">
                
            </div>
            <!-- 한개의 폼태그에서 여러개의 submit을 사용하려면-->
            <!-- 밑에 처럼 만든다 버튼을 누른 name의 값만 getparamer로 들어가고 나머지는 null이들어감  -->
            <div id="insert">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" name="companyName" placeholder="COMPANYNAME"><br>
                <input class="sql_text" type="text" name="contactName" placeholder="CONTACTNAME"><br>
                <input class="sql_text" type="text" name="contactTitle" placeholder="CONTACTTITLE"><br>
                <input class="sql_text" type="text" name="address" placeholder="ADDRESS"><br>
                <input class="sql_text" type="text" name="city" placeholder="CITY"><br>
                <input class="sql_text" type="text" name="region" placeholder="REGION"><br>
                <input class="sql_text" type="text" name="postalCode" placeholder="POSTALCODE"><br>
                <input class="sql_text" type="text" name="country" placeholder="COUNTRY"><br>
                <input class="sql_text" type="text" name="phone" placeholder="PHONE"><br>
                <input class="sql_text" type="text" name="fax" placeholder="FAX"><br>
                <input class="sql_text" type="text" name="homepage" placeholder="HOMPAGE"><br>

                <input class="sql_btn" type="submit" name="insert" value="입력하기">
            </div>
            <div id="update">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" name="supplierId1" placeholder="SupplierID"><br>
                <input class="sql_text" type="text" name="companyName1" placeholder="COMPANYNAME"><br>
                <input class="sql_text" type="text" name="contactName1" placeholder="CONTACTNAME"><br>
                <input class="sql_text" type="text" name="contactTitle1" placeholder="CONTACTTITLE"><br>
                <input class="sql_text" type="text" name="address1" placeholder="ADDRESS"><br>
                <input class="sql_text" type="text" name="city1" placeholder="CITY"><br>
                <input class="sql_text" type="text" name="region1" placeholder="REGION"><br>
                <input class="sql_text" type="text" name="postalCode1" placeholder="POSTALCODE"><br>
                <input class="sql_text" type="text" name="country1" placeholder="COUNTRY"><br>
                <input class="sql_text" type="text" name="phone1" placeholder="PHONE"><br>
                <input class="sql_text" type="text" name="fax1" placeholder="FAX"><br>
                <input class="sql_text" type="text" name="homepage1" placeholder="HOMPAGE"><br>

                <input class="sql_btn" type="submit" name="update" value="수정하기">
            </div>
            <div id="submit_box">
                <input type="submit" name="delete"  value="삭제">         
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