<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>MainView.jsp</h1>
	<jsp:forward page="Forward_Parameter.jsp">
	<!-- it forward to Forward_Parameter.jsp therefore, cannot see this pag here -->
		<jsp:param value="ID" name="id"/>
		<jsp:param value="Password" name="pw"/>
	</jsp:forward>
</body>
</html>