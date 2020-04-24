<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getValue().equals("aaa")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
}
	response.sendRedirect("ViewCookie.jsp");
%>
</body>
</html>