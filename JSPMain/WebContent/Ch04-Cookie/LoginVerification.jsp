<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	String id;
	String pw;
%>
<%
	id=request.getParameter("id");
	pw=request.getParameter("pw");
	
	if(id.equals("aaa") && pw.equals("123")){
		Cookie cookie=new Cookie("id", id);
		cookie.setMaxAge(60);
		/* cookie can be used in 60sec */
		response.addCookie(cookie);
		response.sendRedirect("Welcome.jsp");
	}else{
		response.sendRedirect("Login.html");
	}
%>
</body>
</html>