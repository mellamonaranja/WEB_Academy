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
		<h3>7�� 10���� �۽��ϴ�.</h3>
	</c:if>
	
	<c:choose>
		<c:when test="${7*10==70}">
			<h3>7*10�� 70�Դϴ�.</h3>
		</c:when>
		<c:otherwise>
			<h3>7*10�� ������ �ƴմϴ�.</h3>
		</c:otherwise>
	</c:choose>

</body>
</html>