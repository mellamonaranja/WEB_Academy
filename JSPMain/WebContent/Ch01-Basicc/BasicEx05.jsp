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
	int number=10;
	String str="JAVA SERVER PAGE";
%>
<%!
	public int sum(int a, int b){
	return a+b;
/* method is only allow to declare part */
}
%>
<%
	out.println("number : "+number+"<br>");
	out.println("str : "+str+"<br>");
	out.println("sum : "+sum(7,23)+"<br>");
%>

</body>
</html>