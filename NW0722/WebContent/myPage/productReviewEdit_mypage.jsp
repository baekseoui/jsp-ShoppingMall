<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
body table{
	margin-left: 50px;
}
.tableSet {
	border-collapse: collapse;
	border-color: #ccc;
	border-spacing: 0;
}

.tableSet td {
	background-color: #fff;
	border-color: #ccc;
	border-style: solid;
	border-width: 1px;
	color: #333;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 8px 20px;
	word-break: normal;
}

.tableSet th {
	background-color: #f0f0f0;
	border-color: #ccc;
	border-style: solid;
	border-width: 1px;
	color: #333;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 8px 20px;
	word-break: normal;
}

.tableSet .set {
	background-color: #ffffff;
	border-color: #efefef;
	font-size: 14px;
	text-align: left;
	vertical-align: top;
	
}


.tableSet .boardSet {
	background-color: #ffffff;
	border-color: #efefef;
	font-weight: bold;
	text-align: center;
	text-decoration: underline;
	vertical-align: top;
}

.tableSet .set01 {
	background-color: #ffffff;
	border-color: #efefef;
	font-size: 14px;
	text-align: left;
	vertical-align: top;
	color: #9b9b9b;
	
}

.tableSet .productName {
	background-color: #ffffff;
	border-color: #efefef;
	font-family:Arial, Helvetica, sans-serif !important;;
	font-size: 14px;
	text-align: left;
	vertical-align: top;
}
.bar{
	color:#efefef;
}
#pictures img{
	width: 100px; !important; 
	height: 100px; !important;
	text-align: center;
	margin-top: 20px;
}
.update_btn{
	border:none;
	background: none;
}
.update_btn:hover{
	cursor: pointer;
	outline: none;
	
}
</style>
<script type="text/javascript">
	function updateOk() {
		alert("수정이 완료되었습니다.");
	}
</script>
</head>
<body>
<form action="reviewUpdate.so" method="post">
<input type="hidden" name="boardNum" value="${rDto.boardNum }"/>
<table class="tableSet" style="table-layout: fixed; width: 504px">
	<colgroup>
		<col style="width: 20px">
		<col style="width: 20px">
		<col style="width: 20px">
		<col style="width: 20px">
		<col style="width: 25px">
		<col style="width: 35px">
		<col style="width: 35px">
		<col style="width: 35px">
		<col style="width: 35px">
		<col style="width: 50px">
		<col style="width: 50px">
		<col style="width: 50px">
		<col style="width: 50px">
		<col style="width: 85px">
		<col style="width: 85px">
	</colgroup>
	<thead>
		<tr>
			<th class="boardSet" colspan="6" rowspan="3"> 
			<a href="#">
                  <div id="pictures">${rDto.picture }</div> 
             </a></th>
			<th class="productName" colspan="9">${rDto.productName }</th>
		</tr>
		<tr>
			<td class="set" colspan="9" height="70px">
			<textarea rows="10" cols="70" name="boardContent">${rDto.boardContent }</textarea></td>
		</tr>
		<tr>
			<td class="set01" colspan="7">${rDto.customerID } <span class="bar"> &nbsp; | &nbsp; </span>${rDto.boardDate }</td>
			<td class="set" id="control"><input class="update_btn" type="submit" value="수정" onclick="updateOk();"></td>
			<td class="set" id="control"><a href="index9.so">목록</a></td>
		</tr>
				
	</thead>
</table>
</form>	
</body>