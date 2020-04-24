<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	Connection conn = null;
	
	String sql = "SELECT * FROM classroom";
	
	try{
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		ResultSetMetaData rsmd =  rs.getMetaData();
		
		out.println("컬럼 수: " + rsmd.getColumnCount()+"<br>");
		
		for(int i=1; i<=rsmd.getColumnCount() ; i++){
			out.println(i + "번째 컬럼의 이름: " + rsmd.getColumnName(i) + "<br>");
			out.println(i + "번째 컴럼의 타입: " + rsmd.getColumnTypeName(i) + "<br>");
		}
		
		
	}catch(Exception e){
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