<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="updateEx.jsp">
<input type="hidden" name="id" value="<%=id%>">
아이디: <%=id%><br>
변경할 비밀번호: <input type="text" name="passwd"> <br>
변경할 이름: <input type="text" name="name" ><br>
<input type="submit" value="수정하기">
</form>

</body>
</html>