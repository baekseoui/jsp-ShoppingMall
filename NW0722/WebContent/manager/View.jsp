<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/View2.css"/>
    <title>Document</title>

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.js"></script>
	 <script>
        $(document).ready(function(){
            $('#chat_check').click(function(){
                $('#chat_box').stop().toggle();
            })

        })
    </script>

</head>
<body>
    <div id="heder_wrap">
        <div id="header_1">
            <div id="header_content_1">
                <div id="content1_d1">
                    <a href="Employees_Select.do?page=1">
                        <b>ADMINSTRATOR</b>
                    </a>
                </div>
                <div id="content1_d2">
                
                    <a href="logout.so">로그아웃</a>
                    <div class="clear"style="border: 0px;"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div id="header_2">
            <div id="header_content_2">
                <a href="Employees_Select.do?page=1"><div class="content_2_div">사원정보</div></a>
                <a href="Customer_Select.do?page=1"><div class="content_2_div">고객정보</div></a>
                <a href="productSelect.do?page=1"><div class="content_2_div">물건정보</div></a>
                <a href="qna_select.do?page=1"><div class="content_2_div">문의내역</div></a>
                <a href="Order_select.do?page=1"><div class="content_2_div">주문정보</div></a>
                <a href="ClientCheck_Select.do?page=1" id="left_box"><div class="content_2_div">거래처정보</div></a>

                <div id="chat_check">
                	<img src="img/message.png"/>
                </div>
                <div class="clear"></div>
            </div>
                
        </div>
        <div id="chat_box">
        	<jsp:include page="Chatting.jsp" flush="true" />
        </div>
    </div>
 
</body>
</html>