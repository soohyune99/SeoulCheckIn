package com.seoulcheckin.app.message.vo;

public class MessageDTO {
	private int messageNumber;
	private int messageReceiveEmail;
	private int messageSendEmail;
	private String messageTitle;
	private String messageArticle;
	private String messageSendDate;
	private String memberName;
	
	public MessageDTO() {;}

	public int getMessageNumber() {
		return messageNumber;
	}

	public void setMessageNumber(int messageNumber) {
		this.messageNumber = messageNumber;
	}

	public int getMessageReceiveEmail() {
		return messageReceiveEmail;
	}

	public void setMessageReceiveEmail(int messageReceiveEmail) {
		this.messageReceiveEmail = messageReceiveEmail;
	}

	public int getMessageSendEmail() {
		return messageSendEmail;
	}

	public void setMessageSendEmail(int messageSendEmail) {
		this.messageSendEmail = messageSendEmail;
	}

	public String getMessageTitle() {
		return messageTitle;
	}

	public void setMessageTitle(String messageTitle) {
		this.messageTitle = messageTitle;
	}

	public String getMessageArticle() {
		return messageArticle;
	}

	public void setMessageArticle(String messageArticle) {
		this.messageArticle = messageArticle;
	}

	public String getMessageSendDate() {
		return messageSendDate;
	}

	public void setMessageSendDate(String messageSendDate) {
		this.messageSendDate = messageSendDate;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	@Override
	public String toString() {
		return "MessageDTO [messageNumber=" + messageNumber + ", messageReceiveEmail=" + messageReceiveEmail
				+ ", messageSendEmail=" + messageSendEmail + ", messageTitle=" + messageTitle + ", messageArticle="
				+ messageArticle + ", messageSendDate=" + messageSendDate + ", memberName=" + memberName + "]";
	}

	

	
}
