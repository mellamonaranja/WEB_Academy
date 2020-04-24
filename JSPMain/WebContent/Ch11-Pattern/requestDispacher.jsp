<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
requestDispacher.jsp

id: <%=request.getAttribute("id") %><br>
pw: <%=request.getAttribute("pw") %><br>

<%
	request.setAttribute("id", "jspdragon");
	request.setAttribute("pw", "67890");
	
	RequestDispatcher dispatcher =
			request.getRequestDispatcher("/ch11-pattern/forworded.jsp");
	dispatcher.forward(request, response);
			
	
%>

</body>
</html>