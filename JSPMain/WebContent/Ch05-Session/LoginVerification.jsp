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
	
		if(id.equals("aaa")&&pw.equals("123")){
			session.setAttribute("id", id);
			response.sendRedirect("Welcome.jsp");
		}else{
			response.sendRedirect("Login.html");
		}
	%>
	
	
	
</body>
</html>