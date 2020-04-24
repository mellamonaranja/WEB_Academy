<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%!
	Connection connection;
	Statement statement;
	ResultSet resultset;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	String uid="codelab";
	String upw="oracle_11g";
	
	String query = "SELECT * FROM member";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- 
JDBC -> 데이터베이스 연결
1	import java.sql.*;
2	JDBC 드라이버 로드
3	Connection 객체 생성
4	Statement 객체 생성
5	SQL문 수행 -> ResultSet객체 생성
6	데이터 사용
7	모든 객체 자원 정리
 -->
<body>
<%

try{
	Class.forName(driver);
	connection = DriverManager.getConnection(url, uid, upw);
	statement = connection.createStatement();
	resultset = statement.executeQuery(query);
	
	while(resultset.next()){
		String id = resultset.getString("id");
		String pw = resultset.getString("pw");
		String name = resultset.getString("name");
		String phone = resultset.getString("phone");
		
		out.println("아이디: " + id 
				+ ", 비밀번호: " + pw 
				+ ", 이름: "+ name 
				+ ", 전화번호: " + phone + "<br>");
	}
	
	out.println("모든 데이터를 처리하였습니다.<br>");
	
	
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(resultset!=null){
			resultset.close();
		}
		if(statement!=null){
			statement.close();
		}
		if(connection!=null){
			connection.close();
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
}



%>

</body>
</html>