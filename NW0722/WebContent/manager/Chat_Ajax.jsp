<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<?xml version="1.0" encoding="UTF-8"?>
<chats>
	<chat>
		<c:forEach items="${chat}" var="chat">
		<chat_Article>${chat.chat_Article}</chat_Article>
		</c:forEach>
	</chat>
</chats>
<!DOCTYPE html>
<html>
<head> 



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>