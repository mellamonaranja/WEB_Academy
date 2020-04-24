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
	String str[]={"a", "b", "c", "d"};
%>

<table border="1" width="250">
		<tr>
			<th>index array</th>
			<th>content array</th>
		</tr>
		<tr>
			<td>0</td>
			<td>a</td>
		</tr>	
		<%
		for(int i=0;i<str.length;i++){
			%>
			
			<tr>
			<th><%=i %></th>
			<th><%=str[i] %></th>
			</tr><%
		}
			%>
	</table>
	
	<hr>
	extend for<br>
	<table border="1" width="250">
	<tr>
		<td>array content</td>
	</tr>
	<%
	for(String s:str){
		%>
		<tr>
			<td><%=s %></td>
		</tr>
		<%
	}
	%>
	</table>
	
</body>
</html>