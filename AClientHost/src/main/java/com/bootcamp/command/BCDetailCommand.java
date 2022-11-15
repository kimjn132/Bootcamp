package com.bootcamp.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bootcamp.client.dao.BCBookDao;
import com.bootcamp.dto.regcampDto;

public class BCDetailCommand implements BCCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		String bId = request.getParameter("regSeq");
		int regSeq = Integer.parseInt(request.getParameter("regSeq")); 
		System.out.println("BCDeatilCommand regSeq = "+regSeq);
		session.setAttribute("REGSEQ", regSeq);
		BCBookDao dao = new BCBookDao();
		regcampDto dto = dao.DetailView(bId); // 다오한테 받은 bId를 dto에 보냄 

		request.setAttribute("DetailView", dto);
	}
	public Boolean execute1(HttpServletRequest request, HttpServletResponse response) {
		return null;
	}

}
