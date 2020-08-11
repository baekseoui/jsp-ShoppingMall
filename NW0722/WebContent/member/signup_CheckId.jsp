<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>


<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>아이디 중복 체크</title>
	
	<style type="text/css">
		#wrap {
			width: 490px;
			text-align :center;
			margin: 0 auto 0 auto;
		}
		
		#chk{
			text-align :center;
		}
		
		#cancelBtn{
			visibility:visible;
		}
		
		#useBtn{
			 visibility:hidden;
		}

	</style>
	
	<script type="text/javascript">
	
		// 회원가입창의 아이디 입력란의 값을 가져온다.
		// 사용하기 클릭 시 부모창으로 값 전달 
		
		function sendCheckValue(){
			// 중복체크 결과인 idCheck 값을 전달한다.
			opener.document.registerform.id_Check.value ="idCheck";
			// 회원가입 화면의 ID입력란에 값을 전달
			opener.document.registerform.id.value = document.getElementById("userid").value;
			
			self.close();
				
		}	
		function signUp_Check() { 
		var form = document.checkform
			if((form.userid.value < "0" || form.userid.value > "9") && (form.userid.value < "A" || form.userid.value > "Z") && (form.userid.value < "a" || form.userid.value > "z")){ 
				alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
				form.userid.value = "";
				return false;
			}
		}
		
	</script>
	
</head>
<body>
	
	
	<div id="wrap">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">

			<form id="checkForm" name="checkform" action="idCheck.so" method="get" name="frm" onsubmit="return signUp_Check()">
				<input type="text" name="userid" id="userid" value= "${userid }" maxlength="5" >
				<input type="submit" value="중복확인">
			</form>



			<div id="msg"></div>

			<br> <input id="cancelBtn" type="button" value="취소" onclick="window.close()">
			<br> <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
		</div>
	</div>

	<c:if test="${result ==1}">
		<script type="text/javascript">
			document.getElementById("cancelBtn").style.visibility='visible';
			document.getElementById("useBtn").style.visibility='hidden';
			document.getElementById("msg").innerHTML = "중복된 아이디입니다.";
			
		</script>
	</c:if>
	<c:if test="${result ==-1}">
		<script type="text/javascript">
			document.getElementById("cancelBtn").style.visibility='hidden';
			document.getElementById("useBtn").style.visibility='visible';
			document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
		</script>
	</c:if>






</body>
</html>