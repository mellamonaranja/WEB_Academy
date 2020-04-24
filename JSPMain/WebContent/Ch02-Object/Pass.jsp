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
	int age;
	%>
	<%
	String str=request.getParameter("age");
	age=Integer.parseInt(str);
	%>
	over 19<br>
	age:<%=age%><br>
	<a href="RequestEx.html">go back</a>
</body>
</html>