package com.bootcamp.client.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bootcamp.client.dao.Review_List_Dao;
import com.bootcamp.dto.Review_List_Dto;

public class Review_List_Command implements BCCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		
		Review_List_Dao dao = new Review_List_Dao();
		ArrayList<Review_List_Dto> dtos = dao.review_List();
		request.setAttribute("review_List", dtos);
		
		
	}

	
	
	
	@Override
	public Boolean execute1(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	
	
}
