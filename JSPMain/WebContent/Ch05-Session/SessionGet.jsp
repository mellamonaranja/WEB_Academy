<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Object obj1= session.getAttribute("mySessionName");
	String mySessionName = (String)obj1;
	out.println(mySessionName + "<br>");
	
	Object obj2 = session.getAttribute("myNumber");
	Integer myNumber = (Integer)obj2;
	out.println(myNumber + "<br>");
	
	Object obj3 = session.getAttribute("myNickName");
	String myNickName = (String)obj3;
	out.println(myNickName + "<br>");
%>

</body>
</html>