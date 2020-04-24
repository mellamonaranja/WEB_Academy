<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbId = "codelab";
	String dbPasswd = "oracle_11g";

	Connection con = null;
	PreparedStatement pstmt1 = null;
	PreparedStatement pstmt2 = null;
	String sql = null;
	ResultSet rs = null;

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con = DriverManager.getConnection(jdbcURL, dbId, dbPasswd);
		
		sql = "SELECT passwd FROM student WHERE id=?";
		pstmt1 = con.prepareStatement(sql);
		pstmt1.setString(1, id);
		rs = pstmt1.executeQuery();
		
		if(rs.next()){
			String rPasswd = rs.getString("passwd");
			if(passwd.equals(rPasswd)){
				sql = "DELETE FROM student WHERE id=?";
				pstmt2 = con.prepareStatement(sql);
				pstmt2.setString(1, id);
				int cnt = pstmt2.executeUpdate();
				%>
				<%=cnt %>���� ���ڵ尡 ���� �Ϸ�Ǿ����ϴ�.<br>
				<input type="button" value="��Ϻ���" onclick="location.href='selectStudent.jsp'">
				
				<%
				
			}else{
				%>
				��й�ȣ�� ��ġ���� �ʽ��ϴ�.<br>
				<input type="button" value="����������" onclick="location.href='deleteForm.jsp'">
				
				<%
			}
			
		}else{
			%>
			���̵� �������� �ʽ��ϴ�.<br>
			<input type="button" value="����������" onclick="location.href='deleteForm.jsp'">
			<%
		}
		
		
		
		
	}catch(Exception e){
		out.println("���� �߻�");
		e.printStackTrace();
	}finally{
		
	}
	
%>

</body>
</html>