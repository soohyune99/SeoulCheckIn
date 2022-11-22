package com.seoulcheckin.app.comment.vo;

public class KCommentVO {
	private int kCommentNumber;
	private String kCommentArticle;
	private String kCommentDate;
	private int kBoardNumber;
	private int memberNumber;
	
	public KCommentVO() {;}

	public int getkCommentNumber() {
		return kCommentNumber;
	}

	public void setkCommentNumber(int kCommentNumber) {
		this.kCommentNumber = kCommentNumber;
	}

	public String getkCommentArticle() {
		return kCommentArticle;
	}

	public void setkCommentArticle(String kCommentArticle) {
		this.kCommentArticle = kCommentArticle;
	}

	public String getkCommentDate() {
		return kCommentDate;
	}

	public void setkCommentDate(String kCommentDate) {
		this.kCommentDate = kCommentDate;
	}

	public int getkBoardNumber() {
		return kBoardNumber;
	}

	public void setkBoardNumber(int kBoardNumber) {
		this.kBoardNumber = kBoardNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "KCommentVO [kCommentNumber=" + kCommentNumber + ", kCommentArticle=" + kCommentArticle
				+ ", kCommentDate=" + kCommentDate + ", kBoardNumber=" + kBoardNumber + ", memberNumber=" + memberNumber
				+ "]";
	}
}
