package com.seoulcheckin.app.banner.vo;

public class BannerVO {
	private int bannerNumber;
	private String bannerName;
	
	public BannerVO() {;}

	public int getBannerNumber() {
		return bannerNumber;
	}

	public void setBannerNumber(int bannerNumber) {
		this.bannerNumber = bannerNumber;
	}

	public String getBannerName() {
		return bannerName;
	}

	public void setBannerName(String bannerName) {
		this.bannerName = bannerName;
	}

	@Override
	public String toString() {
		return "BannerVO [bannerNumber=" + bannerNumber + ", bannerName=" + bannerName + "]";
	}
}
