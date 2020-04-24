<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ViewParameter.jsp" method="jsp">
		name:<input type="text" name="name"><br>
		address:<input type="text" name="address"><br>
		animal:
		<input type="checkbox" name="aaa" value="dog_big">dog_big
		<input type="checkbox" name="aaa" value="dog_small">dog_small
		<input type="checkbox" name="aaa" value="dog_middle">dog_middle<br>
		
		major:
		<input type="radio" name="major" value="Korean">Korean
		<input type="radio" name="major" value="English">English<br>
		
		hobby:
		<select name="hobby"><br>
			<option value="bbb">bbb</option><br>
			<option value="ccc">ccc</option><br>
			<option value="ddd">ddd</option><br>
		</select>
		<input type="submit" value="submit">
	</form>
</body>
</html>