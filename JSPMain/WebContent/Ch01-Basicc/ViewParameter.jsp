<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	name parameter:<%=request.getParameter("name") %><br>
	address parameter:<%=request.getParameter("address") %><br>
	major parameter:<%=request.getParameter("major") %><br>
	hobby parameter:<%=request.getParameter("hobby") %><br>
	
	pet parameter:
	<%
		String[] values=request.getParameterValues("pet");
		if(values!=null)
		for(int i=0;i<values.length;i++){
			if(i!=0){
				%>
				,
				<%
			}
			%>
			<%=values[i]%>
			<% 
		}
		%>

	<%=Arrays.toString(values) %>
</body>
</html>