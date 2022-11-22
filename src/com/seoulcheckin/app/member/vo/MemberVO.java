package com.seoulcheckin.app.member.vo;

public class MemberVO {
	private int memberNumber;
	private String memberClassification;
	private String memberEmail;
	private String memberName;
	private String memberPhone;
	private String memberPassword;
	private String memberPhoto;
	
	 public MemberVO() {;}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberClassification() {
		return memberClassification;
	}

	public void setMemberClassification(String memberClassification) {
		this.memberClassification = memberClassification;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberPhoto() {
		return memberPhoto;
	}

	public void setMemberPhoto(String memberPhoto) {
		this.memberPhoto = memberPhoto;
	}

	@Override
	public String toString() {
		return "MemberVO [memberNumber=" + memberNumber + ", memberClassification=" + memberClassification
				+ ", memberEmail=" + memberEmail + ", memberName=" + memberName + ", memberPhone=" + memberPhone
				+ ", memberPassword=" + memberPassword + ", memberPhoto=" + memberPhoto + "]";
	}
}
