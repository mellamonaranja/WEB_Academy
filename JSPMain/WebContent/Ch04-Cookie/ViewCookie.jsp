<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.URLDecoder" %>
    <%
    Cookie[] cookies=request.getCookies();
    /* already created more than one cookie */
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	cookie list<br>
	<%
	if(cookies!=null && cookies.length>0){
		for(int i=0;i<cookies.length;i++){
			%>
			<%=cookies[i].getName()	%>
			<%=URLDecoder.decode(cookies[i].getValue(), "EUC-KR") %>
			<%
		}
	}else{
		 %>
		 <h2>no cookie</h2>
		 <%
	}
	%>
</body>
</html>