<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	
	Connection conn = null;
	
	String sql = "INSERT INTO classroom (num, name) VALUES(1, '홍길동')";

	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
		
		Statement stmt = conn.createStatement();
		int result = stmt.executeUpdate(sql);
		
		if(result!=0){
			out.println("<h3>레코드가 등록되었습니다.</h3>");
		}
		
	}catch(Exception e){
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		
		e.printStackTrace();
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>