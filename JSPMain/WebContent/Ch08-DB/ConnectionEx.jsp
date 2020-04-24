<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%
	String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id="codelab";
	String passwd ="oracle_11g";
	
	Connection con = null;
	
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(jdbcURL, id, passwd);
		
		out.println("정상적으로 데이터베이스에 접속되어습니다.");
	}catch(SQLException e){
		out.println("예외가 발생하였습니다.");
		e.printStackTrace();
	}finally{
		if(con!=null){
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
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