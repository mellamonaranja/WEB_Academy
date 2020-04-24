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
	session=request.getSession();
	String[] str=session.getValueNames();
	out.println("session ID is "+session.getId()+"<br>");
	out.println("session inactive interval is "+session.getMaxInactiveInterval()+"<br>");
	if(str.length==0){
		session.putValue(session.getId(), "A");
	}else{
		String value=(String)session.getValue(str[0]);
		out.println("name : "+str[0]+"<br>");
		out.println("value : "+value+"<br>");
		
		session.putValue(session.getId(), value+"A");
		/* when refresh, value will be appended */
	}
%>
</body>
</html>