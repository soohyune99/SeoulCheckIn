package com.seoulcheckin.app.myprogram.vo;

public class MyProgramVO {
	private int myProgramNumber;
	private int memberNumber;
	private int schoolNumber;

	public MyProgramVO() {;}

	public int getMyProgramNumber() {
		return myProgramNumber;
	}

	public void setMyProgramNumber(int myProgramNumber) {
		this.myProgramNumber = myProgramNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getSchoolNumber() {
		return schoolNumber;
	}

	public void setSchoolNumber(int schoolNumber) {
		this.schoolNumber = schoolNumber;
	}

	@Override
	public String toString() {
		return "MyProgramVO [myProgramNumber=" + myProgramNumber + ", memberNumber=" + memberNumber + ", schoolNumber="
				+ schoolNumber + "]";
	}
}
