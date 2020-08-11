<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<style type="text/css">
.picture {
	align-items: center;
	margin-top: 20px;
	margin-left: 20px;
}

.picture img {
	width: 100px;
	height: 100px;
}

.recruit {
	width: 700px;
	height: 150px;
	margin: 5px 0 0 0;
}

.hide {
	display: none;
}

.show {
	display: table-row;
}

div {
	display: block;
}

.evalution {
	width: 750px;
	height: 165px;
}

.file_input label {
	position: relative;
	cursor: pointer;
	display: inline-block;
	vertical-align: middle;
	overflow: hidden;
	width: 100px;
	height: 30px;
	background: #777;
	color: #fff;
	text-align: center;
	line-height: 30px;
}

.file_input label input {
	position: absolute;
	width: 0;
	height: 0;
	overflow: hidden;
}

.file_input input[type=text] {
	vertical-align: middle;
	display: inline-block;
	width: 400px;
	height: 28px;
	line-height: 28px;
	font-size: 11px;
	padding: 0; :0;
	border: 1px solid #777;
}

.button {
	width: 150px;
	height: 30px;
	background-color: #DA006B;
	font-color: white;
	outline: 0;
	border: 0;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	cursor: pointor;
}

.button:focus {
	outline: 0;
	border: 0;
}

.evalution-productimg {
	float: left;
	width: 20%;
	height: 100%;
}

.evalution-producttitle {
	float: left;
	width: 80%;
	height: 30%;
}

.evalution-producttitle-font {
	font-size: 20px;
	margin: 10px 0 0 5px;
}

.evalution-productcontect {
	float: left;
	width: 65%;
	height: 70%;
}

.evalution-write {
	float: right;
	width: 15%;
	height: 70%;
}

.evalution-writebtn {
	width: 80%;
	height: 80%;
	display: block;
	margin: 0 auto;
	border-radius: 15px;
	outline: 0;
	border: 0;
	cursor: pointer;
	float: right;
}

.evalution-writebtn:focus {
	outline: 0;
	border: 0;
}

.recruit td {
	border-bottom: 1px solid #DDDDDD;
}

.reviewWirte_btn {
	border: none;
	background: white;
	border-style: none;
}

.reviewWirte_btn {
	cursor: pointer;
	outline: none;
}
</style>

<script type="text/javascript">
function qna_Check(a) {
	// Get the modal
	
	var fileMax = 10*1024*1024;
	

	if (!a.boardContent.value) {
		alert("내용을  입력하세요.");
		return false;	
	}else if (fileMax < a.addFile1.files[0].size){
		alert("파일 용량 은 10메가를 넘을 수 없습니다.4");
		return false;
	}
	
	

}


</script>

</head>
<body>

	<c:forEach items="${orDtos}" var="orDto">
		<form action="index9_2.so" method="post" name="form1"
			enctype="multipart/form-data" onsubmit="return qna_Check(this);">
			<table cellspacing="0" class="recruit">
				<tbody>
					<input type="hidden" name="productID" value="${orDto.productID }">
					<tr class="item">
						<td>
							<div class="evalution">
								<div class="evalution-productimg">
									<a
										href="../productDetails/productDetails_view.po?productId=${orDto.productID }">
										<div class="picture">${orDto.picture }</div>
									</a>
								</div>
								<div></div>
								<div class="evalution-producttitle">
									<p class="evalution-producttitle-font" name="productName">${orDto.productName }</p>
									<br> <input type="hidden" name="productName"
										value="${orDto.productName }">
									<p>
										<strong> 주문 날짜 :</strong><c:set var='dateValue' value="${orDto.orderDate }"/>
										${fn:substring(dateValue,0,10)} 
									</p>
									<br>
									<p>
										<strong> 주문 번호 :</strong> ${orDto.orderID }
									</p>
									<br> <input type="hidden" name="orderID"
										value="${orDto.orderID }">
								</div>
								<div class="evalution-write">
									<input type="button" class="evalution-writebtn" value="상품평 쓰기">
								</div>
							</div>
						</td>
					</tr>
					<tr class="hide">
						<td>
							<div class="CommentWriter" style="height: 220px;">
								<div class="comment_inbox" style="margin: 0 0 0 5px;">
									<span name="customerID" style="font-size: 16px;">${orDto.customerID }</span><br>

									<textarea placeholder="상품평 작성" rows="1" id="boardContent"
										name="boardContent"
										style="overflow: hidden; overflow-wrap: break-word; height: 150px; width: 740px; font-size: 15px;"></textarea>
								</div>
								<div class="comment_attach">
									<div class="file_input" style="float: left; margin: 0 0 0 5px;">
										<label> 파일 첨부 <input type="file" name="file1"
											onchange="javascript:document.getElementById('file_route').value=this.value">
										</label> <input type="text" readonly="readonly" title="File Route"
											id="file_route">
									</div>
									<div class="register_box"
										style="float: right; margin: 0 5px 0 0;">
										<input type="submit" class="reviewWirte_btn" value="등 록" onClick="reviewOk()">
									</div>
								</div>
							</div>

						</td>
					</tr>

				</tbody>
			</table>
		</form>
	</c:forEach>
	<script type="text/javascript">  
    	//아코디언
        $(function(){  
            var article = (".recruit .show");  
            $(".evalution-writebtn").click(function() {  
                var myArticle =$(this).parents().next("tr");  
                if($(myArticle).hasClass('hide')) {  
                    $(article).removeClass('show').addClass('hide');  
                    $(myArticle).removeClass('hide').addClass('show');  
                }  
                else {  
                    $(myArticle).removeClass('show').addClass('hide');  
                }  
            });  
        }); 
        
    	function reviewOk() {
			alret("등록 되었습니다.");
		}
    	
    	
    	
    	
    	
        //글쓰기 버튼 눌렀을때 반응
       /*  function blank_popup(){
        	var textblank=$("#boardContent").val();
        	
        	if(!textblank){
        		alert("내용을 입력해주세요.");
        	}else{
        		alert("등록되었습니다.");

        
        	}
        } */
    </script>
</body>
</html>
