package com.seoulcheckin.app.board.vo;

public class EBoardVO {
	private int eBoardNumber;
	private String eBoardTitle;
	private String eBoardArticle;
	private String eBoardDate;
	private String eBoardPhoto;
	private int memberNumber;
	
	public EBoardVO() {;}

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

	@Override
	public String toString() {
		return "BoardVO [eBoardNumber=" + eBoardNumber + ", eBoardTitle=" + eBoardTitle + ", eBoardArticle="
				+ eBoardArticle + ", eBoardDate=" + eBoardDate + ", eBoardPhoto=" + eBoardPhoto + ", memberNumber="
				+ memberNumber + "]";
	}
}
