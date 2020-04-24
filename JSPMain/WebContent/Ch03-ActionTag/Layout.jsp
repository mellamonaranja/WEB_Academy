<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
   request.setCharacterEncoding("EUC-KR");
    String company="Korean company";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%=company %></title>
</head>
<body>
	<table width="500" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2">
		<jsp:include page="Top.jsp">
			<jsp:param name="company" value="<%=company %>"/>
		</jsp:include>
		</td>
	</tr>
	<tr height="300">
		<td width="100" valign="top">
			<jsp:include page="Left.jsp"></jsp:include>
			</td>
		<td width="400" valign="top">Layout</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="Bottom.jsp">
			</jsp:include>
		</td>
	</tr>
	
	</table>
</body>
</html>