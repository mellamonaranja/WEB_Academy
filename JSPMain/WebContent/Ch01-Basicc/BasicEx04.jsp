<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int i=0;
	while(true){
		i++;
		
		out.println("3 * "+ i + "="+ (3*i)+"<br>");
	%>
	################
	<%
	if(i>=9)
		break;
	}
	%>
</body>
</html>