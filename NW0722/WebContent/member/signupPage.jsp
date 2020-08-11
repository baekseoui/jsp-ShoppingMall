<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northwind</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/signup.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
	

	function signUp_Check() { //회원가입 누를시 전체 체크

		var form = document.registerform
		//아이디 입력여부
		if (!form.id.value) {
			alert("아이디를 입력해주세요.");
			return false;
		}
	
		if((form.id.value < "0" || form.id.value > "9") && (form.id.value < "A" || form.id.value > "Z") && (form.id.value < "a" || form.id.value > "z")){ 
			alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
			return false;
		}
		
		//아이디 중복체크를 했는지 여부
		if (form.id_Check.value == "idUncheck") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		//비밀번호 입력여부
		if (!form.pwd.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (form.pwd.value != form.pwd_Check.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		// 이름 입력 여부
		if (!form.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}

		if (!form.birth.value) {
			alert("생년월일을 입력하세요.");
			return false;
		}

		if (isNaN(form.birth.value)) {
			alert("생년월일은 숫자만 입력가능합니다.");
			return false;
		}

		if (!form.phoneNum.value) {
			alert("휴대폰 번호를 입력하세요.");
			return false;
		}

		if (isNaN(form.phoneNum.value)) {
			alert("휴대폰 번호는 -제외한 숫자만 입력해주세요.");
			return false;
		}

		if (!form.email.value) {
			alert("메일 주소를 입력하세요.");
			return false;
		}

		if (!form.emailInput.value) {
			alert("주소를 입력하세요.");
			return false;
		}
		if (!form.agreement1.checked) {
			alert("이용약관 동의 해주세요.");
			return false;
		}
		if (!form.agreement2.checked) {
			alert("개인정보수집 및 이용 동의 해주세요.");
			return false;
		}
	}

	//이메일 입력방식 선택

	$(document).ready(function() {
		$('#emailSelect').change(function() {
			$("#emailSelect option:selected").each(function() {
				if ($(this).val() == '1') { //직접입력일 경우
					$("#emailInput").val('ntt.com'); //값 초기화
					$("#emailInput").attr("disabled", false); //활성화
				} else{
					$("#emailInput").val($(this).val()); //값 초기화
					$("#emailInput").attr("readonly", true); //비활성화
				}
			});
		});
	});
	
	function idCheck(){
		if(document.registerform.id.value==""){
			alert("아이디를 입력해주세요");
			document.registerform.id.focus();
			return;
		}
		
		var url = "../idCheck.so?userid=" + document.registerform.id.value;
		window.open(url,"_blank_1",	"toolbar=no, menubar=no, scrollbars=no, resizable=no, width=500, height=300");
	}
	

	// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
	// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
	// 다시 중복체크를 하도록 한다.

	function inputIdChk() {
		document.registerform.id_Check.value = "idUncheck";
	}
	
	
</script>


</head>
<body>
	<div id="wrap">
		<div id="header">

			<jsp:include page="../section/headerMain.jsp" />

		</div>
		<div id="content">
			<div class="wrap_join">
				<h2 class="sub_title is_line">간편 회원가입</h2>
				<span id="add_exp">정보를 정확히 입력해주셔야 아이디나 비밀번호 분실 시 찾으실 수 있습니다. <br><em class="red_color">입력하신 정보는 회원가입 여부에만 사용되며 저장되지 않습니다.</em></span>
				
				<form method="post" name="registerform" action="signupNew.so" onsubmit="return signUp_Check()">
				
					<input type="text" class="join_form" name="id" autocapitalize="off" maxlength="5" size=200	placeholder="아이디 영문/숫자  1~5자" onkeydown="inputIdChk()" >
					<input type="button" class="validateIdSubmit" name="validateIdSubmit" onclick="idCheck()" value="중복확인">
					<input type="hidden" name="id_Check" value="idUncheck" >
					
					
					
					<input type="password" class="join_form" name="pwd"	maxlength="12" placeholder="비밀번호 영문, 숫자, 특수문자 조합 8~12자"> 
					<input type="password" class="join_form" name="pwd_Check" maxlength="12" placeholder="비밀번호 다시 입력"> 
					
					<input type="text" class="join_form" name="name" maxlength="10" placeholder="이름">
					<input type="text" class="join_form" name="birth" maxlength="8" placeholder="생년월일 예: 19940101">
					<input type="text" class="join_form" name="phoneNum" maxlength="11" placeholder="휴대폰번호 -없이 입력">
					
					<input type="text" class="email" name="email" placeholder="이메일">
					<b>@</b> 
					<input type="text" class="email" name="email_Input" placeholder="직접입력" id="emailInput"> 
					
					<select title="선택옵션" class="validateIdSubmit" name="emailSelect" id="emailSelect">
						
						<option value="1">직접입력</option>
						
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="gmail.com">gmail.com</option>
						
					</select>
					
					<br>
					<br>
					
					<input type="checkbox" name="agreement1"> (필수) 이용약관 동의 <br> <br>
					<input type="checkbox" name="agreement2"> (필수) 개인정보수집 및 이용 동의 <br> <br>
					<input type="submit" class="join_btn" value="가입완료">
				
				</form>
				
				
				
				
				
				<div class='cont_find'>
					<div class='find_account'>
						<a href='mainIDFindPage.jsp' class='link_find' id='findId'>아이디
							찾기</a>&nbsp;&nbsp;| <a href='mainPwdFindPage.jsp' class='link_find'
							id='findId'>&nbsp;&nbsp;비밀번호 찾기 </a>
					</div>
				</div>
			</div>


		</div>
		<div id="footer">
			<jsp:include page="../section/footerMain.jsp" />



		</div>
	</div>
</body>
</html>