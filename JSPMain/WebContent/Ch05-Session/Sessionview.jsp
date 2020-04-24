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
		Enumeration<String> enumeration=session.getAttributeNames();
		int i=0;
		
		while(enumeration.hasMoreElements()){
			String strName=enumeration.nextElement();
			String strValue=(String)session.getAttribute(strName);
			
			out.println("strName is "+strName+"<br>");
			out.println("strValue is "+strValue+"<br>");
		}
		if(i==0){
			out.println("There is no session");
		}
	%>
</body>
</html>