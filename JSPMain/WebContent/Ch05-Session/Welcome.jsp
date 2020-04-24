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
	Enumeration enumeration=session.getAttributeNames();
	
	while(enumeration.hasMoreElements()){
		String sName=enumeration.nextElement().toString();
		String sValue=(String)session.getAttribute(sName);
		
		if(sValue.equals("aaa")){
			out.println("welcome "+sValue+"<br>");
		}
	}
	%>
	<br>
	<a hrf="Logout.jsp">Logout</a>
	<br>
	<a href="Sessionview.jsp">Session view</a>
	
</body>
</html>