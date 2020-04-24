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
	String str="aaa(bbb)";
	
	private int multiple(int a, int b){
		return a*b;
	}
%>

<%=number %><br>
<%=str %><br>
<%=multiple(2,9) %>
</body>
</html>