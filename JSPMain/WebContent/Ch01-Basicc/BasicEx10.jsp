<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.Date"  %>
   <%@ page import="java.text.SimpleDateFormat" %>
    
<%
	Date nowTime=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("DD-MM-YYYY a hh:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	The time is <%= nowTime %><br>
	The time after apply to format is <%= sdf.format(nowTime) %><br>
</body>
</html>