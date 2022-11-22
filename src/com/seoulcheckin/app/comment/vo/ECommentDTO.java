package com.seoulcheckin.app.comment.vo;

public class ECommentDTO {
	private int eCommentNumber;
	private String eCommentArticle;
	private String eCommentDate;
	private int eBoardNumber;
	private int memberNumber;
	private String memberEmail;
	
	public ECommentDTO() {;}

	public int geteCommentNumber() {
		return eCommentNumber;
	}

	public void seteCommentNumber(int eCommentNumber) {
		this.eCommentNumber = eCommentNumber;
	}

	public String geteCommentArticle() {
		return eCommentArticle;
	}

	public void seteCommentArticle(String eCommentArticle) {
		this.eCommentArticle = eCommentArticle;
	}

	public String geteCommentDate() {
		return eCommentDate;
	}

	public void seteCommentDate(String eCommentDate) {
		this.eCommentDate = eCommentDate;
	}

	public int geteBoardNumber() {
		return eBoardNumber;
	}

	public void seteBoardNumber(int eBoardNumber) {
		this.eBoardNumber = eBoardNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	@Override
	public String toString() {
		return "ECommentDTO [eCommentNumber=" + eCommentNumber + ", eCommentArticle=" + eCommentArticle
				+ ", eCommentDate=" + eCommentDate + ", eBoardNumber=" + eBoardNumber + ", memberNumber=" + memberNumber
				+ ", memberEmail=" + memberEmail + "]";
	}

	

	
}
