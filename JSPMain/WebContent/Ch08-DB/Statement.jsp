<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%
    String driver="oracle.jdbc.driver.OracleDriver";
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
    
    Connection conn=null;
    
    String sql="INSERT INTO classroom(num, name) VALUES(1, 'AAA')";
    try{
    	Class.forName(driver);
    	conn=DriverManager.getConnection(url, "codelab", "oracle_11g");
    	
    	Statement stmt=conn.createStatement();
    	int result=stmt.executeUpdate(sql);
    	
    	if(result!=1){
    		
    	}
    	out.println("<h3>Record has been registered successfully");
    }catch(Exception e){
    	out.println("<h3>Record hasn't been registered");
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