<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:orcl";

Connection conn = null;

String sql = "INSERT INTO classroom (num, name) VALUES(?, '�̼���')";

try{
	Class.forName(driver);
	
	conn = DriverManager.getConnection(url, "codelab", "oracle_11g");
	
	PreparedStatement stmt = conn.prepareStatement(sql);
	
	for(int i=2; i<=5 ; i++){
		
		stmt.setInt(1, i);
		
		if(stmt.executeUpdate()!=0){
			out.println("<h3>"+ i + "�� ���ڵ尡 �߰��Ǿ����ϴ�.</h3>");
		}
	}
	
}catch(Exception e){
	out.println("<h3>���ڵ� �߰��� �����Ͽ����ϴ�.</h3>");
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