<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>




<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/object.css"/>
</head>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    window.onload = function contents(){
        str ="";
        for(var i=0;i<10;i++){
            str += "<div class='productList'>";
            str += "<div>0</div>";
            str += "<div>1</div>";
            str += "<div>2</div>";
            str += "<div>3</div>";
            str += "<div>4</div>";
            str += "<div>5</div>";
            str += "<div>6</div>";
            str += "<div>7</div>";
            str += "<div>8</div>";
            str += "<div>9</div>";
            str += "<div><input type='checkbox'></div>";
                 //input 로직 처리를 위해 name값 for문 돌려서 넣어줘야함
            
            str += "<div class='clear'></div>";
            str += "</div>";
        }
        document.getElementById("container").innerHTML = str;
    }
    
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

    })
</script>

</style>
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
            <form action="#">
                <select id="search_select">
                    <option value="상품명">제품명</option>
                    <option value="상품번호">제품번호</option>
                    <option value="카테고리번호">카테고리번호</option>
                </select>
                <input id="search_text" type="text" >
                <button id="search_button" type="submit">검색</button>
            </form>
        </div>
        <div class="productList" id="productList">
            <div>제품번호</div>
            <div>제품명</div>
            <div>공급자 ID</div>
            <div>카테고리 ID</div>
            <div>단위당 수량</div>
            <div>단가</div>
            <div>재고단위</div>
            <div>주문단위</div>
            <div>재주문점</div>
            <div>단종</div>
            <div>선택</div>
            <div class="clear"></div>
        </div>
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기위한 form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
        <form action="#">                    
            <div id="container"> 
            </div>
                     <!-- 한개의 폼태그에서 여러개의 submit을 사용하려면-->
            <!-- 밑에 처럼 만든다 버튼을 누른 name의 값만 getparamer로 들어가고 나머지는 null이들어감  -->
            <div id="insert">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" placeholder="CUSTOMERID"><br>
                <input class="sql_text" type="text" placeholder="COMPANYNAME"><br>
                <input class="sql_text" type="text" placeholder="CONTACTNAME"><br>
                <input class="sql_text" type="text" placeholder="CONTACTTITLE"><br>
                <input class="sql_text" type="text" placeholder="ADDRESS"><br>
                <input class="sql_text" type="text" placeholder="CITY"><br>
                <input class="sql_text" type="text" placeholder="REGION"><br>
                <input class="sql_text" type="text" placeholder="POSTALCODE"><br>
                <input class="sql_text" type="text" placeholder="COUNTRY"><br>
                <input class="sql_text" type="text" placeholder="PHONE"><br>
                <input class="sql_text" type="text" placeholder="FAX"><br>

                <input class="sql_btn" type="submit" name="insert" value="입력하기">
            </div>
            <div id="update">
                <div class="exit">&times;</div>
                <input class="sql_text" type="text" placeholder="CUSTOMERID"><br>
                <input class="sql_text" type="text" placeholder="COMPANYNAME"><br>
                <input class="sql_text" type="text" placeholder="CONTACTNAME"><br>
                <input class="sql_text" type="text" placeholder="CONTACTTITLE"><br>
                <input class="sql_text" type="text" placeholder="ADDRESS"><br>
                <input class="sql_text" type="text" placeholder="CITY"><br>
                <input class="sql_text" type="text" placeholder="REGION"><br>
                <input class="sql_text" type="text" placeholder="POSTALCODE"><br>
                <input class="sql_text" type="text" placeholder="COUNTRY"><br>
                <input class="sql_text" type="text" placeholder="PHONE"><br>
                <input class="sql_text" type="text" placeholder="FAX"><br>

                <input class="sql_btn" type="submit" name="update" value="수정하기">
            </div>
            <div id="submit_box">
                <input type="submit" name="delete" value="삭제">         
            </div>          
        </form>

        <div id="input_box">
            <button id="insert_btn">입력</button>
            <button id="update_btn">수정</button>
        </div>
    </div>

</body>
</html>