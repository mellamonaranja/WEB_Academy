<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%!
	Connection connection;
	PreparedStatement preparedStatement;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	String uid="codelab";
	String upw="oracle_11g";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Class.forName(driver);
	connection = DriverManager.getConnection(url, uid, upw);
	
	String query = "INSERT INTO member(id, pw, name, phone) VALUES(?, ?, ?, ?)";
	preparedStatement = connection.prepareStatement(query);
	
	int n;
// 	preparedStatement.setString(1, "mercury");
// 	preparedStatement.setString(2, "1234");
// 	preparedStatement.setString(3, "수성");
// 	preparedStatement.setString(4, "010-1234-5678");
// 	n = preparedStatement.executeUpdate();

	preparedStatement.setString(1, "venus");
	preparedStatement.setString(2, "5678");
	preparedStatement.setString(3, "금성");
	preparedStatement.setString(4, "010-4567-8901");
	n = preparedStatement.executeUpdate();
	
	preparedStatement.setString(1, "earth");
	preparedStatement.setString(2, "7890");
	preparedStatement.setString(3, "지구");
	preparedStatement.setString(4, "010-3456-7890");
	n = preparedStatement.executeUpdate();
	
	preparedStatement.setString(1, "jupiter");
	preparedStatement.setString(2, "1122");
	preparedStatement.setString(3, "목성");
	preparedStatement.setString(4, "010-5566-6677");
	n = preparedStatement.executeUpdate();
	
	if(n==1){
		out.println("INSERT SUCCESS");
	}else{
		out.println("INSERT FAIL");
	}
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(preparedStatement!=null){
			preparedStatement.close();
		}
		if(connection!=null){
			connection.close();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
<br>
<a href="selectEx.jsp">회원정보 보기</a>
</body>
</html>