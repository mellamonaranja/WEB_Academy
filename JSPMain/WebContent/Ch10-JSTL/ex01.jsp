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
	<c:set var="test" value="Hello JSTL!!!" />
	<h3><c:out value="${test}" /> </h3>
	
	<c:remove var="test" />
	<h3><c:out value="${test}" /> </h3>
	
	<c:catch var="err">
		<%=10/0 %>
	</c:catch>
	<c:out value="${err }" />
	
	
</body>
</html>