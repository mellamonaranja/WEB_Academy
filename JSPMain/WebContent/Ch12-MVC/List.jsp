<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table width="500" cellpaddng="0" cellspacing="0" border="10"> </table>
<tr>
	<th>num</th>
	<th>name</th>
	<th>title</th>
	<th>date</th>
	<th>view</th>
	</tr>
	
	<c:forEach items="${list }"var="dto">
	<tr>
	<td>${dto.bid }</td>
	<td>${dto.bName }</td>
	<td>
	<c:forEach begin="1" end="${dto.BIntent }">-</c:forEach>
	<a href="Content_view.do?bid=${dto.bid }">${dto.bTitle }</a>
	</td>
	<td>${dto.bDate }</td>
	<td>${dto.bHit }</td>
	</tr>
	</c:forEach>
	<tr>
	<td colspan="S"><a href="Write_view.do"></a>write</td>
	</tr>
</body>
</html>