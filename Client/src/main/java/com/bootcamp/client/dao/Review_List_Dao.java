package com.bootcamp.client.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.bootcamp.dto.Review_List_Dto;


public class Review_List_Dao {
	
	DataSource dataSource;
	
	public Review_List_Dao() {
		
		try {
			
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/camping");
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
	}
	
	public ArrayList<Review_List_Dto> review_List(){
		ArrayList<Review_List_Dto> dtos = new ArrayList<Review_List_Dto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select regImage1, regName, rvStar, rvTime, rvTitle, rvContent from regcamp c, review r, book b ";
			String query2 = "where b.pay_client_cId = r.rvCId and c.regSeq = b.pay_room_regcamp_regSeq and r.rvCId = "+ CId +" group by r.rvCId;";
			
																								//CId는 session으로 불러와야 함
			
			
			preparedStatement = connection.prepareStatement(query+query2);
			resultSet = preparedStatement.executeQuery();
			
			
			while(resultSet.next()) {
				String regImage1 = resultSet.getString("regImage1");
				String regName = resultSet.getString("regName");
				int rvStar = resultSet.getInt("rvStar");
				Timestamp rvTime = resultSet.getTimestamp("rvTime");
				String rvTitle = resultSet.getString("rvTitle");
				String rvContent = resultSet.getString("rvContent");
				
				Review_List_Dto dto = new Review_List_Dto(regImage1, regName, rvStar, rvTime, rvTitle, rvContent);
				dtos.add(dto);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null)connection.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
		}
		
		return dtos;

	}//list

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//end
