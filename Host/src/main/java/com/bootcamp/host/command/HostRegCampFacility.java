package com.bootcamp.host.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bootcamp.host.dao.HRegCampDao;

public class HostRegCampFacility implements BCCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HRegCampDao dao = new HRegCampDao();
		//facility 동시 등록
				String fName1 = request.getParameter("facilityPE");
				String fName2 = request.getParameter("facilityPH");
				String fName3 = request.getParameter("facilityPW");
				String fName4 = request.getParameter("facilityPC");
				String fName5 = request.getParameter("facilityPT");
				String fName6 = request.getParameter("facilityPS");
				String fName7 = request.getParameter("facilityPB");
				String fName8 = request.getParameter("facilityPA");
				String fName9 = request.getParameter("facility9");
				String fName10 = request.getParameter("facility10");
				String fName11 = request.getParameter("facility11");
				String fName12 = request.getParameter("facility12");
				int regcamp_regSeq = 1;
				int regcamp_host_hSeq = 1;
				//fName into array
				String[] fNameA = {fName1, fName2, fName3, fName4, fName5, fName6, fName7, fName8, fName9, fName10,
						fName11, fName12};
				String fName = "";
				
				for(int i = 0; i < fNameA.length; i++) {
					if(fNameA[i] != null) {
						fName = fNameA[i];				
						dao.regfacility(fName, regcamp_regSeq, regcamp_host_hSeq);
					}
					System.out.println(fName);
				}
	}

	@Override
	public Boolean execute1(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
