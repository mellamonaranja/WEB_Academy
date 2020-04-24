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
	while(enumeration.hasMoreElements()){
		String strName=enumeration.nextElement();
		String strValue=(String)session.getAttribute(strName);
		
		if(strValue.equals("aaa")){
			session.removeAttribute(strName);
			/* setattribute can be removed with removeattribute */
		}
	}
%>

<br>
<a href="Sessionview.jsp"></a>
</body>
</html>