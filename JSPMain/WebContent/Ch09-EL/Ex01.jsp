<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${10} <br>
	${20.20}<br>
	${"aadd" }<br>
	${true }<br>
	
	<hr>
	<%=1+2 %><br>
	
	<hr>
	${1+2 }<br>
	
	<hr>
	${1+2 }<br>
	${1-2 }<br>
	${1*2 }<br>
	${10%2 }<br>
	${1/2 }<br>
	
	${1>3 }<br>
	${1<3 }<br>
	${1!=3 }<br>
	
	${(1>2)? 1:2}<br>
	${(1>2)||(1<2)}<br>
</body>
</html>