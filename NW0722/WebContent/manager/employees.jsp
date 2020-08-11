<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/employees2.css"></link>
   <title>Employees</title>
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
			for(firstPage<=lastPage;firstPage++){
			    	page +="<a href='Employees_Select.do?page="+firstPage+"'>";
			        page +="<div class='pages' id='page_check"+firstPage+"'>"+firstPage;
			        page +="</div></a>"
			}
			   $("#post_page").html(page);
			 
			var next="";
			var rel="";
			if(lastPage < totalPage){
				next += "<a href='Employees_Select.do?page="+nextPage+"'>";
				next += "<div id='next'>next</div></a>";
				$("#next_box").html(next);
				
			}
			if(lastPage>5){
				rel += "<a href='Employees_Select.do?page="+relPage+"'>";
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
            <div><h2>사원정보</h2></div>
        </div>
        <div id="header_22">
        </div>
        <div id="search">
            <form action="employees_search.do">
                <select id="search_select" name="search_select">
                    <option value="사원번호">사원번호</option>
                    <option value="사원명">사원명</option>
                </select>
                <input id="search_text" type="text" name="search">
               
                	<input class="search_btn" type="submit" name="search_enter" value="검색">
                	
             
            </form>
        </div>
        
        
           <div class="recode" id="recode">
            <div>사원번호</div>
            <div>이름(직무)</div>
            <div>주소</div>
            <div>입사일</div>
            <div>전화번호</div>
            <div>관리</div>
            <div class="clear"></div>
        </div>
        <!-- 자바 스크립트로 만든 check박스 값을 사용하기위한 form태그  결과를 처리할 Jsp로 보내야함(처리후 다시 불러오기)-->
 
     <form action="employee_enter.do">    
	
		<c:forEach items="${dtos }" var="dto">
		<div class="asd" id="asd">          
			<div>${dto.employeeid }</div>
			<div>${dto.firstname }_${dto.lastname }<br>(${dto.title })</div>
			<div>${dto.address }_${dto.city }_${dto.region }_${dto.postalcode }_${dto.country }</div>
			<div>${dto.hiredate }</div>
			<div>${dto.homephone }</div>
			<div><input type="checkbox" name='checkData' value='${dto.employeeid }'></div>	
	
		</div>
		 
		</c:forEach>

				
	  			<div id="insert">
					<div class="insertall"><div class="insert1">EmployeeID:</div><div class="insert2"><input class="sql_text" type="text" name="employeeid"></div></div><br>
					<div class="insertall"><div class="insert1">LastName:</div><div class="insert2"><input class="sql_text" type="text" name="lastname"></div></div><br>
					<div class="insertall"><div class="insert1">FirstName:</div><div class="insert2"><input class="sql_text" type="text" name="firstname"></div></div><br>
					<div class="insertall"><div class="insert1">Title:</div><div class="insert2"><input class="sql_text" type="text" name="title"></div></div><br>
					<div class="insertall"><div class="insert1">TitleOfCourtesy:</div><div class="insert2"><input class="sql_text" type="text" name="titleofcourtesy"></div></div><br>
					<div class="insertall"><div class="insert1">BirthDate:</div><div class="insert2"><input class="sql_text" type="datetime-local" name="birthdate"></div></div><br>
					<div class="insertall"><div class="insert1">HireDate:</div><div class="insert2"><input class="sql_text" type="datetime-local" name="hiredate"></div></div><br>
					<div class="insertall"><div class="insert1">Address	:</div><div class="insert2"><input class="sql_text" type="text" name="address"></div></div><br>
					<div class="insertall"><div class="insert1">City	:</div><div class="insert2"><input class="sql_text" type="text" name="city"></div></div><br>
					<div class="insertall"><div class="insert1">Region	:</div><div class="insert2"><input class="sql_text" type="text" name="region"></div></div><br>
					<div class="insertall"><div class="insert1">PostalCode	:</div><div class="insert2"><input class="sql_text" type="text" name="postalcode"></div></div><br>
					<div class="insertall"><div class="insert1">Country	:</div><div class="insert2"><input class="sql_text" type="text" name="country"></div></div><br>
					<div class="insertall"><div class="insert1">HomePhone	:</div><div class="insert2"><input class="sql_text" type="text" name="homephone"></div></div><br>
					<div class="insertall"><div class="insert1">Extension	:</div><div class="insert2"><input class="sql_text" type="text" name="extension"></div></div><br>
					<div class="insertall"><div class="insert1">Photo	:</div><div class="insert2"><input class="sql_text" type="text" name="photo"></div></div><br>
					<div class="insertall"><div class="insert1">Notes	:</div><div class="insert2"><input class="sql_text" type="text" name="notes"></div></div><br>
					<div class="insertall"><div class="insert1">ReportsTo	:</div><div class="insert2"><input class="sql_text" type="text" name="reportsto"></div></div><br>
					<div class="insertall"><div class="insert1">PhotoPath	:</div><div class="insert2"><input class="sql_text" type="text" name="photopath"></div></div><br>
				
					<input class="sql_btn" type="submit" name="insert" value="입력"><br>
					    
           		 </div>
	  			
	  
          		<div id="update">
          		
          			<input class="sql_text" type="hidden"  name="updateDataemployeeid">
					<div class="insertall"><div class="insert1">LastName:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatalastname"></div></div><br>
					<div class="insertall"><div class="insert1">FirstName:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatafirstname"></div></div><br>
					<div class="insertall"><div class="insert1">Title:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatatitle"></div></div><br>
					<div class="insertall"><div class="insert1">TitleOfCourtesy:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatatitleofcourtesy"></div></div><br>
					<div class="insertall"><div class="insert1">Address	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDataaddress"></div></div><br>
					<div class="insertall"><div class="insert1">City	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatacity"></div></div><br>
					<div class="insertall"><div class="insert1">Region	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDataregion"></div></div><br>
					<div class="insertall"><div class="insert1">PostalCode	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatapostalcode"></div></div><br>
					<div class="insertall"><div class="insert1">Country	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatacountry"></div></div><br>
					<div class="insertall"><div class="insert1">HomePhone	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatahomephone"></div></div><br>
					<div class="insertall"><div class="insert1">Extension	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDataextension"></div></div><br>
					<div class="insertall"><div class="insert1">Photo	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDataphoto"></div></div><br>
					<div class="insertall"><div class="insert1">Notes	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatanotes"></div></div><br>
					<div class="insertall"><div class="insert1">ReportsTo	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDatareportsto"></div></div><br>
					<div class="insertall"><div class="insert1">PhotoPath	:</div><div class="insert2"><input class="sql_text" type="text" name="updateDataphotopath"></div></div><br>
				
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