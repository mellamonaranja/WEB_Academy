<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%
    String driver="oracle.jdbc.driver.OracleDriver";
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
    Connection conn=null;
    
    String sql="SELECT * FROM classroom";
    
    try{
    	Class.forName(driver);
    	conn=DriverManager.getConnection(url, "codelab", "oracle_11g");
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	ResultSet rs=pstmt.executeQuery();
    	ResultSetMetaData rsmd=rs.getMetaData();
    	out.println("The number of culumn is "+rsmd.getColumnCount()+"<br>");
    	for(int i=1;i<=rsmd.getColumnCount();i++){
    		out.println(i+"'s column name is "+rsmd.getColumnCount()+"<br>");
    		out.println(i+"'s column type name is "+rsmd.getColumnTypeName(i)+"<br>");
    	}
    }catch(Exception e){
    	e.printStackTrace();
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>