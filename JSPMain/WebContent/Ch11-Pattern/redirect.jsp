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
		request.setAttribute("id", "codedragon");
		request.setAttribute("pw", "20200109");
		
		response.sendRedirect("/jspMain/RequestObj2");
	%>

</body>
</html>