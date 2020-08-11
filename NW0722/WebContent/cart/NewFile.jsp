<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 입력페이지</title>
</head>
<body>

<form action="cartInsert.po" method="get">
	상품 ID:<input type="text" name="productId" value="4"><br>
	상품 이름:<input type="text" name="ProductName" value="Cajun Seasonin"><br>
	수량:<input type="text" name="quantity" value="1"><br>
	기본가격:<input type="text" name="price2" value="22"><br>
	사진:<input type="text" name="picture" value="Chai"><br>
<input type="submit" value="장바구니">
</form>
<button><a href="cartSelect.po">장바구니 보기</a></button>
<!-- <a href="cartInsert.po" onclick="go_cart()">장바구니 넣기</a>
<a href="cartSelect.po">장바구니 보기</a> -->
</body>
</html>