<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <<jsp:useBean id="member" class="com.ELex.MemberInfo" scope="page"></jsp:useBean>
    <jsp:setProperty name="member" property="name" value="aaa">
    <jsp:setproperty name="member" property="id" value="AAA">
    <jsp:setproperty name="member" property="pw" value="2020">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	name:<jsp:getProperty name="member" property="name"/><br>
	id:<jsp:getProperty name="member" property="id"/><br>
	pw:<jsp:getProperty name="member" property="pw"/><br>
	
	<hr>
	name:${member.name }<br>
	id:${member.id }<br>
	pw:${member.pw }<br>
</body>
</html>