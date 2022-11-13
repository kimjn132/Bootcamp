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
		String kName1 = request.getParameter("regKeywordAN");
		String kName2 = request.getParameter("regKeywordKK");
		String kName3 = request.getParameter("regKeywordHW");
		String kName4 = request.getParameter("regKeywordYA");
		
		//Keyword into array
				String[] kNameA = {kName1, kName2, kName3, kName4};
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
