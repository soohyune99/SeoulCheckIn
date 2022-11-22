package com.seoulcheckin.app.board.vo;

public class EBoardDTO {
	private int eBoardNumber;
	private String eBoardTitle;
	private String eBoardArticle;
	private String eBoardDate;
	private String eBoardPhoto;
	private int memberNumber;
	private String memberName;
	
	public EBoardDTO() {;}

	public int geteBoardNumber() {
		return eBoardNumber;
	}

	public void seteBoardNumber(int eBoardNumber) {
		this.eBoardNumber = eBoardNumber;
	}

	public String geteBoardTitle() {
		return eBoardTitle;
	}

	public void seteBoardTitle(String eBoardTitle) {
		this.eBoardTitle = eBoardTitle;
	}

	public String geteBoardArticle() {
		return eBoardArticle;
	}

	public void seteBoardArticle(String eBoardArticle) {
		this.eBoardArticle = eBoardArticle;
	}

	public String geteBoardDate() {
		return eBoardDate;
	}

	public void seteBoardDate(String eBoardDate) {
		this.eBoardDate = eBoardDate;
	}

	public String geteBoardPhoto() {
		return eBoardPhoto;
	}

	public void seteBoardPhoto(String eBoardPhoto) {
		this.eBoardPhoto = eBoardPhoto;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	@Override
	public String toString() {
		return "EBoardDTO [eBoardNumber=" + eBoardNumber + ", eBoardTitle=" + eBoardTitle + ", eBoardArticle="
				+ eBoardArticle + ", eBoardDate=" + eBoardDate + ", eBoardPhoto=" + eBoardPhoto + ", memberNumber="
				+ memberNumber + ", memberName=" + memberName + "]";
	}
	
	
	
}
