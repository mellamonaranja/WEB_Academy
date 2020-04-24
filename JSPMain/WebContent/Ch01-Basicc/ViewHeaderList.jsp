<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Enumeration" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration<String> headerEnum=request.getHeaderNames();
/* Enumeration is similar as iterator */
	while(headerEnum.hasMoreElements()){
		String headername=headerEnum.nextElement();
		String headervalue=request.getHeader(headername);
		
		%>
		<%=headername%>=<%=headervalue%><br>
		<%
	}
%>
</body>
</html>