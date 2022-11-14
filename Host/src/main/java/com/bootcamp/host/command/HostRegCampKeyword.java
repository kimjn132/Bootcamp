package com.bootcamp.host.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bootcamp.host.dao.HRegCampDao;

public class HostRegCampKeyword implements BCCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HRegCampDao dao = new HRegCampDao();
		String kName1 = request.getParameter("KeywordAN");
		String kName2 = request.getParameter("KeywordKK");
		String kName3 = request.getParameter("KeywordHW");
		String kName4 = request.getParameter("KeywordYA");
		String kName5 = request.getParameter("Keyword5");
		String kName6 = request.getParameter("Keyword6");
		String kName7 = request.getParameter("Keyword7");
		String kName8 = request.getParameter("Keyword8");
		String kName9 = request.getParameter("Keyword9");
		String kName10 = request.getParameter("Keyword10");
		String kName11 = request.getParameter("Keyword11");
		String kName12 = request.getParameter("Keyword12");
		
		//Keyword into array
				String[] kNameA = {kName1, kName2, kName3, kName4, kName5, kName6, kName7, kName8, kName9, kName10,
						kName11, kName12};
				String kName = "";
				int regcamp_regSeq = 1;
				int regcamp_host_hSeq = 1;
				
				for(int i = 0; i < kNameA.length; i++) {
					if(kNameA[i] != null) {
						kName = kNameA[i];
						dao.regkeyword(kName, regcamp_regSeq, regcamp_host_hSeq);
					}
					System.out.println(kName);
				}
	}

	@Override
	public Boolean execute1(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
