<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	client IP:<%=request.getRemoteAddr() %><br>
	protocol :<%=request.getProtocol() %><br>
	get method : <%=request.getMethod() %><br>
	request url:<%=request.getRequestURL() %><br>
	<%
	out.println("context path: "+request.getContextPath()+"<br>");
	out.println("server name: "+request.getServerName()+"<br>");
	out.println("server port: "+request.getServerPort()+"<br>");
	%>
</body>
</html>