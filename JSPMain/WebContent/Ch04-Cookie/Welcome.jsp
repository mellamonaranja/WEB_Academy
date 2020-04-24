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
	if(cookies!=null && cookies.length>0){
		for(int i=0;i<cookies.length;i++){
    		String id=cookies[i].getValue();
			if(id.equals("aaa")){
				out.println("welcome " + "'"+ id+ "'"+"<br>");
	}
		}
	}
	
	%>
	<br>
	<a href="Logout.jsp">Logout</a>

</body>
</html>