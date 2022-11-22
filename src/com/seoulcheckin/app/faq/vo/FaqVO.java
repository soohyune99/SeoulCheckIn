package com.seoulcheckin.app.faq.vo;

public class FaqVO {
	/*
	 * faq_number		FAQ 전체관리 숫자 (PK_auto_increment) 
	 * faq_mcategory	내국인 10 / 외국인 20 (중카테고리) 
	 * faq_scategory	이용방법, 지원하기/관리, 기타 (소카테고리) 내국인 11 12 13 / 외국인 21 22 23
	 * faq_title		게시물 제목 
	 * faq_article		게시물 내용_varchar 로 이루어져있기 때문에 글자만 입력 (1000이상)
	 * 
	 */
	
	private int faqNumber;
	private String faqMcategory;
	private String faqScategory;
	private String faqTitle;
	private String faqArticle;
	
	public FaqVO() {;}

	public int getFaqNumber() {
		return faqNumber;
	}

	public void setFaqNumber(int faqNumber) {
		this.faqNumber = faqNumber;
	}

	public String getFaqMcategory() {
		return faqMcategory;
	}

	public void setFaqMcategory(String faqMcategory) {
		this.faqMcategory = faqMcategory;
	}

	public String getFaqScategory() {
		return faqScategory;
	}

	public void setFaqScategory(String faqScategory) {
		this.faqScategory = faqScategory;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqArticle() {
		return faqArticle;
	}

	public void setFaqArticle(String faqArticle) {
		this.faqArticle = faqArticle;
	}

	@Override
	public String toString() {
		return "FaqVO [faqNumber=" + faqNumber + ", faqMcategory=" + faqMcategory + ", faqScategory=" + faqScategory
				+ ", faqTitle=" + faqTitle + ", faqArticle=" + faqArticle + "]";
	}
	
	
	
}
