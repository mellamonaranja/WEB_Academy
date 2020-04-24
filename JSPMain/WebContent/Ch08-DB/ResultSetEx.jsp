<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:orcl";

Connection conn = null;

String sql = "SELECT * FROM classroom";

try{
	Class.forName(driver);
	
	conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
		out.println("<h3>" + rs.getInt(1) + ", " + rs.getString(2) + "</h3>");
	}
	
	rs.close();
	
	
}catch(Exception e){
	out.println("<h3>데이터 가져오기에 실패하였습니다.</h3>");
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