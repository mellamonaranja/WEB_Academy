<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="myEcho" class="com.javabeans.Echo"/>
<setProperty property="msg" name="myEcho"/>

<%
out.print("The contents from EchoBeans is "+ myEcho.getMsg()+"<br>");

%>
</body>
</html>