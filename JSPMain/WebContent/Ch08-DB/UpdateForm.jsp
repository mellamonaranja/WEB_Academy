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
���̵�: <%=id%><br>
������ ��й�ȣ: <input type="text" name="passwd"> <br>
������ �̸�: <input type="text" name="name" ><br>
<input type="submit" value="�����ϱ�">
</form>

</body>
</html>