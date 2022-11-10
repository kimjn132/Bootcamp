package com.bootcamp.dto;

import java.sql.Timestamp;

public class Review_List_Dto {

	public Review_List_Dto() {
		// TODO Auto-generated constructor stub
	}
	
	String regImage1;
	String regName;
	int rvStar;
	Timestamp rvTime;
	String rvTitle;
	String rvContent;
	
	public Review_List_Dto(String regImage1, String regName, int rvStar, Timestamp rvTime, String rvTitle,
			String rvContent) {
		super();
		this.regImage1 = regImage1;
		this.regName = regName;
		this.rvStar = rvStar;
		this.rvTime = rvTime;
		this.rvTitle = rvTitle;
		this.rvContent = rvContent;
	}

	public String getRegImage1() {
		return regImage1;
	}

	public void setRegImage1(String regImage1) {
		this.regImage1 = regImage1;
	}

	public String getRegName() {
		return regName;
	}

	public void setRegName(String regName) {
		this.regName = regName;
	}

	public int getRvStar() {
		return rvStar;
	}

	public void setRvStar(int rvStar) {
		this.rvStar = rvStar;
	}

	public Timestamp getRvTime() {
		return rvTime;
	}

	public void setRvTime(Timestamp rvTime) {
		this.rvTime = rvTime;
	}

	public String getRvTitle() {
		return rvTitle;
	}

	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}

	public String getRvContent() {
		return rvContent;
	}

	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	
	
	
	
	
	
	
}
