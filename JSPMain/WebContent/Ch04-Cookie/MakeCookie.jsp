<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.URLEncoder" %>
    <%
    Cookie cookie=new Cookie("cookiename", "cookievalue");
    
    cookie.setMaxAge(30*60);
    /* 1min * 30times, coockie will be disappeared after this time */
    
    response.addCookie(cookie);
    
    Cookie cookie2=new Cookie("iscookiename", "iscookievalue");
    
    response.addCookie(cookie2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	cookie name:<%=cookie.getName() %><br>
	cookie value:<%=cookie.getValue() %><br>
</body>
</html>