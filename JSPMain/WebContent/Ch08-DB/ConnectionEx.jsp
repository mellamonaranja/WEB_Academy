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
		
		out.println("���������� �����ͺ��̽��� ���ӵǾ���ϴ�.");
	}catch(SQLException e){
		out.println("���ܰ� �߻��Ͽ����ϴ�.");
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