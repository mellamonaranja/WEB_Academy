<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="1" end="30" step="2" var="test">
		<b>${test }</b>
	</c:forEach>
	
	<hr>
	<c:set var="data" value="홍길동,이순신,일지매" />
	<c:forTokens items="${data }" delims="," var="alphabet">
		<b>${alphabet}</b>
	</c:forTokens>

</body>
</html>