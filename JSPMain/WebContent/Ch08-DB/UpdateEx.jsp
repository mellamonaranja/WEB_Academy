<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	System.out.println(id);
	System.out.println(passwd);
	System.out.println(name);
	
	String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbId = "codelab";
	String dbPasswd = "oracle_11g";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con = DriverManager.getConnection(jdbcURL, dbId, dbPasswd);
		
		String sql = "UPDATE student SET passwd=?, name=? WHERE id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, passwd);
		pstmt.setString(2, name);
		pstmt.setString(3, id);
		
		int cnt = pstmt.executeUpdate();
		
		%>
		<%=cnt %>개의 행이 수정되었습니다.<br>
		<input type="button" value="목록보기" onclick="location.href='selectStudent.jsp'">
		
		<%
		
		
	}catch(Exception e){
		out.println("예외 발생");
		e.printStackTrace();
	}finally{
		try{
			if(pstmt!=null){
				pstmt.close();
			}
			if(con!=null){
				con.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

%>
</body>
</html>