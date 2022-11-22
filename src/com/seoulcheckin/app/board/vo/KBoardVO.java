package com.seoulcheckin.app.board.vo;

public class KBoardVO {
	private int kBoardNumber;
	private String kBoardTitle;
	private String kBoardArticle;
	private String kBoardDate;
	private String kBoardPhoto;
	private int memberNumber;
	
	public KBoardVO() {;}

	public int getkBoardNumber() {
		return kBoardNumber;
	}

	public void setkBoardNumber(int kBoardNumber) {
		this.kBoardNumber = kBoardNumber;
	}

	public String getkBoardTitle() {
		return kBoardTitle;
	}

	public void setkBoardTitle(String kBoardTitle) {
		this.kBoardTitle = kBoardTitle;
	}

	public String getkBoardArticle() {
		return kBoardArticle;
	}

	public void setkBoardArticle(String kBoardArticle) {
		this.kBoardArticle = kBoardArticle;
	}

	public String getkBoardDate() {
		return kBoardDate;
	}

	public void setkBoardDate(String kBoardDate) {
		this.kBoardDate = kBoardDate;
	}

	public String getkBoardPhoto() {
		return kBoardPhoto;
	}

	public void setkBoardPhoto(String kBoardPhoto) {
		this.kBoardPhoto = kBoardPhoto;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "BoardVO [kBoardNumber=" + kBoardNumber + ", kBoardTitle=" + kBoardTitle + ", kBoardArticle="
				+ kBoardArticle + ", kBoardDate=" + kBoardDate + ", kBoardPhoto=" + kBoardPhoto + ", memberNumber="
				+ memberNumber + "]";
	}
}
