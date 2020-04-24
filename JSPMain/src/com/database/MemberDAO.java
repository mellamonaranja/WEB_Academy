package com.database;
import java.sql.*;
import java.util.*;

public class MemberDAO {
	private String url="jdbc:oracle:thin:@localhost:1521:orcl";
	private String uid="codelab";
	private String upw="oracle_11g";
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> memberSelect(){
		ArrayList<MemberDTO> dtos=new ArrayList<MemberDTO>();
		
		Connection connection=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			connection=DriverManager.getConnection(url, uid, upw);
			stmt=connection.createStatement();
			rs=stmt.executeQuery("SELECT * FROM membership");
			
			while(rs.next()) {
				String name=rs.getString("name");
				String id=rs.getString("id");
				String pw=rs.getString("pw");
				String phone1=rs.getString("phone1");
				String phone2=rs.getString("phone2");
				String phone3=rs.getString("phone3");
				String gender=rs.getString("gender");
				String email=rs.getString("email");
				
				MemberDTO dto=new MemberDTO(name, id, pw, phone1, phone2, phone3, gender, email);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {rs.close();}
				if(stmt!=null) stmt.close();
				if(connection!=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
	}
}
