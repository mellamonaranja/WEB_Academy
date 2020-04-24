<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width="500" cellpaddng="0" cellspacing="0" border="10"> </table>

<form action="write.do" method="post">
<tr>
	<td>name</td>
	<td><input type="text" name="bName" size="50"></td>
</tr>
<tr>
	<td>title</td>
	<td><input type="text" name="bName" size="50"></td>
</tr>

<tr>
	<td>content</td>
	<td><textarea name="bContent" rows="10" cols="50"></textarea></td>
</tr>

<tr>
	<td colspan="2">
	<input type="submit" value="input">
	&nbsp;&nbsp;<a href="List.do">view list</a>
	</td>
	<td></td>
</tr>
</form>
</body>
</html>