package com.seoulcheckin.app.visa.vo;

public class VisaVO {
	/*
	 * 비자넘버(PK)		visa_number int unsigned auto_increment primary key,
	 * 체류자격			visa_name varchar(500),
	 * 신청대상또는활동범위	visa_content varchar(1000),
	 * 네비게이터 넘버(FK)	navigator_number
	 */
	
	private int visaNumber;
	private String visaName;
	private String visaContent;
	private int navigatorNumber;
	
	public VisaVO() {;}

	public int getVisaNumber() {
		return visaNumber;
	}

	public void setVisaNumber(int visaNumber) {
		this.visaNumber = visaNumber;
	}

	public String getVisaName() {
		return visaName;
	}

	public void setVisaName(String visaName) {
		this.visaName = visaName;
	}

	public String getVisaContent() {
		return visaContent;
	}

	public void setVisaContent(String visaContent) {
		this.visaContent = visaContent;
	}

	public int getNavigatorNumber() {
		return navigatorNumber;
	}

	public void setNavigatorNumber(int navigatorNumber) {
		this.navigatorNumber = navigatorNumber;
	}

	@Override
	public String toString() {
		return "VisaVO [visaNumber=" + visaNumber + ", visaName=" + visaName + ", visaContent=" + visaContent
				+ ", navigatorNumber=" + navigatorNumber + "]";
	}
}
