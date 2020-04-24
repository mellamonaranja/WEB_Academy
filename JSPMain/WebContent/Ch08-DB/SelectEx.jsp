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
JDBC -> �����ͺ��̽� ����
1	import java.sql.*;
2	JDBC ����̹� �ε�
3	Connection ��ü ����
4	Statement ��ü ����
5	SQL�� ���� -> ResultSet��ü ����
6	������ ���
7	��� ��ü �ڿ� ����
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
		
		out.println("���̵�: " + id 
				+ ", ��й�ȣ: " + pw 
				+ ", �̸�: "+ name 
				+ ", ��ȭ��ȣ: " + phone + "<br>");
	}
	
	out.println("��� �����͸� ó���Ͽ����ϴ�.<br>");
	
	
	
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