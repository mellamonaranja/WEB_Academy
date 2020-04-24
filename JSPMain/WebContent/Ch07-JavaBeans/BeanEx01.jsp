<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="Student" class="com.javabeans.Student" />
    <!-- same as this;Student student = new com.javabeans.Student() -->
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="name" name="Student" value="aaa"/>
	<!-- same as this;student.setName("aaa"); -->
	
	<jsp:setProperty property="age" name="Student" value="111"/>
	<jsp:setProperty property="grade" name="Student" value="777"/>
	<jsp:setProperty property="studentNumber" name="Student" value="2020"/>
	
	
name:<jsp:getProperty property="name" name="Student"/><br>
age:<jsp:getProperty property="age" name="Student"/><br>
grade:<jsp:getProperty property="grade" name="Student"/><br>
StudentNumber:<jsp:getProperty property="studentNumber" name="Student"/><br>


</body>
</html>