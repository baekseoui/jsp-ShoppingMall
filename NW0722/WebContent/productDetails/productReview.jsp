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
	margin-left: 10%;
	margin-top: 30px;
}
.tableSet {
	border-collapse: collapse;
	border-color: #ccc;
	border-spacing: 0;
}
.set img{
	width: 100px;
	height: 100px;
	margin-left: 20px;
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
</style>
</head>
<body>
<c:choose>
<c:when test="${empty reviewDtos }">
	<h2 style="text-align: center;">작성한 상품평이 없습니다.</h2>
</c:when>
<c:otherwise>
<table class="tableSet" style="table-layout: fixed; width: 700px">
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
		<col style="width: 90px">
		<col style="width: 90px">
	</colgroup>
	<thead>
	<c:forEach items="${reviewDtos}" var="reviewDtos"> 
	<input type="hidden" name="boardNum" value="${reviewDtos.boardNum }"/>
		<tr>
			<th class="boardSet" colspan="7" rowspan="4"> 
			<a href="../productDetails/productDetails_view.po?productId=${reviewDtos.productID }">
                   <div id="pictures">${reviewDtos.picture }</div> 
             </a></th>
			<th class="productName" colspan="10"><strong>${reviewDtos.productName }</strong></th>
		</tr>
		<tr>
		<c:forEach items="${dto1}" var="dto1"> 
		<c:choose>	
			<c:when test="${dto1.boardNum == reviewDtos.boardNum }">
			<td class="set" colspan="4" rowspan="2" ><img src="../tempUpload/${dto1.fileNewName}"></td>
			</c:when>
		</c:choose>
		</c:forEach>	
		</tr>
		
		<tr>
			<td class="set" colspan="10" height="70px">${reviewDtos.boardContent }</td>
		</tr>
		
		<tr>
			<td class="set01" colspan="10">${reviewDtos.customerID } <span class="bar"> &nbsp; | &nbsp; </span>${reviewDtos.boardDate }</td>
		</tr>
				
	</c:forEach>
	</thead>
</table>
</c:otherwise>
</c:choose>	
</body>