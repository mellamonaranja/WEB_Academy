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
	
	if(age>=19){
		response.sendRedirect("Pass.jsp?age="+age);
		/* get method is after ? and put the value what I want to get */
	}else{
		response.sendRedirect("Fail.jsp?age="+age);
	}
	%>
</body>
</html>