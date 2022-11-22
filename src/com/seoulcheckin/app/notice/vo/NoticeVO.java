package com.seoulcheckin.app.notice.vo;

public class NoticeVO {
	/*
	 * notice_number	공지사항 전체관리 숫자 (PK_auto_increment)
	 * notice_title		공지사항 제목
	 * notice_article	공지사항 내용_varchar 로 이루어져있기 때문에 글자만 입력 (1000이상)
	 * 
	 */
	
	private int noticeNumber;
	private String noticeTitle;
	private String noticeArticle;
	
	public NoticeVO() {;}

	public int getNoticeNumber() {
		return noticeNumber;
	}

	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeArticle() {
		return noticeArticle;
	}

	public void setNoticeArticle(String noticeArticle) {
		this.noticeArticle = noticeArticle;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNumber=" + noticeNumber + ", noticeTitle=" + noticeTitle + ", noticeArticle="
				+ noticeArticle + "]";
	}
	
	
}
