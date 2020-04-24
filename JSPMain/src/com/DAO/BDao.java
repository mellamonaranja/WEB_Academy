package com.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.DTO.BDto;

public class BDao {
	public ArrayList<BDto>list(){
		ArrayList<BDto> dtos=new ArrayList<BDto>();
		
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultset=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OraceDriver");
			DriverManager.getConnection("jdbc:oracle:thin@localhost:1521:orcl", 
					"codelab", "oracle_11g");
			String query="SELECT bid, bName, bTitle, bContent, bDate, bhit, bGroup, bStep, bIndent "
					+ "FROM mvcboard ORDER BY bGroup DESC, bStep ASC";
				preparedStatement=connection.prepareStatement(query);
				resultset=preparedStatement.executeQuery();
				
				while(resultset.next()) {
					
					int bid=resultset.getInt("bid");
					String bName=resultset.getString("bName");
					String bTitle=resultset.getString("bTitle");
					String bContent=resultset.getString("bContent");
					Timestamp bDate=resultset.getTimestamp("bDate");
					int bHit=resultset.getInt("bHit");
					int bGroup=resultset.getInt("bGroup");
					int bStep=resultset.getInt("bStep");
					int bIndent=resultset.getInt("bIndent");
					
					BDto dto=new BDto(bid, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				
				}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultset!=null) {
					resultset.close();
					if(preparedStatement!=null) {
						preparedStatement.close();
						if(connection!=null) {
							connection.close();
						}
					}
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
	}//list()
	
	public void write(String bName, String bTitle, String bContent) {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OraceDriver");
			DriverManager.getConnection("jdbc:oracle:thin@localhost:1521:orcl", 
					"codelab", "oracle_11g");
			
			String query="INSERT INTO nvcboard(bid, bname, bTitle, bContent, bHit, bGroup, bStep, bindent) "+"VALUES(mvcvboard_seq.nextval, ?,?,?,0,mvcvboard_seq.currval, 0,0)";
			preparedStatement=connection.prepareStatement(query);
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			
			int rn=preparedStatement.executeUpdate();
			System.out.println("rn: "+rn);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}try {if(preparedStatement!=null) {
			preparedStatement.close();
			if(connection!=null) {
				connection.close();
			}
		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}//write()
	
	public void delete(String bid) {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
	}
}
