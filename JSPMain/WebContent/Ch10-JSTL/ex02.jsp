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
	<c:if test="${7>10 }">
		<h3>7은 10보다 작습니다.</h3>
	</c:if>
	
	<c:choose>
		<c:when test="${7*10==70}">
			<h3>7*10은 70입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>7*10의 연산이 아닙니다.</h3>
		</c:otherwise>
	</c:choose>

</body>
</html>