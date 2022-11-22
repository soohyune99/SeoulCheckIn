package com.seoulcheckin.app.map.vo;

public class MapVO {
	private int mapNumber;
	private String mapApproval;
	private String mapClassification;
	private String mapName;
	private String mapAddress;
	private String mapPhone;
	private String mapPrice;
	private String mapIntroduce;
	private String mapPhoto;
	private String mapHouseOpeningDate;
	private String mapHouseType;
	private String mapHouseTrading;
	private String mapHouseSize;
	private String mapJobPayType;
	private String mapJobClosingDate;
	private String mapLandmarkTime;
	private int memberNumber;
	
	public MapVO() {;}

	public int getMapNumber() {
		return mapNumber;
	}

	public void setMapNumber(int mapNumber) {
		this.mapNumber = mapNumber;
	}

	public String getMapApproval() {
		return mapApproval;
	}

	public void setMapApproval(String mapApproval) {
		this.mapApproval = mapApproval;
	}

	public String getMapClassification() {
		return mapClassification;
	}

	public void setMapClassification(String mapClassification) {
		this.mapClassification = mapClassification;
	}

	public String getMapName() {
		return mapName;
	}

	public void setMapName(String mapName) {
		this.mapName = mapName;
	}

	public String getMapAddress() {
		return mapAddress;
	}

	public void setMapAddress(String mapAddress) {
		this.mapAddress = mapAddress;
	}

	public String getMapPhone() {
		return mapPhone;
	}

	public void setMapPhone(String mapPhone) {
		this.mapPhone = mapPhone;
	}

	public String getMapPrice() {
		return mapPrice;
	}

	public void setMapPrice(String mapPrice) {
		this.mapPrice = mapPrice;
	}

	public String getMapIntroduce() {
		return mapIntroduce;
	}

	public void setMapIntroduce(String mapIntroduce) {
		this.mapIntroduce = mapIntroduce;
	}

	public String getMapPhoto() {
		return mapPhoto;
	}

	public void setMapPhoto(String mapPhoto) {
		this.mapPhoto = mapPhoto;
	}

	public String getMapHouseOpeningDate() {
		return mapHouseOpeningDate;
	}

	public void setMapHouseOpeningDate(String mapHouseOpeningDate) {
		this.mapHouseOpeningDate = mapHouseOpeningDate;
	}

	public String getMapHouseType() {
		return mapHouseType;
	}

	public void setMapHouseType(String mapHouseType) {
		this.mapHouseType = mapHouseType;
	}

	public String getMapHouseTrading() {
		return mapHouseTrading;
	}

	public void setMapHouseTrading(String mapHouseTrading) {
		this.mapHouseTrading = mapHouseTrading;
	}

	public String getMapHouseSize() {
		return mapHouseSize;
	}

	public void setMapHouseSize(String mapHouseSize) {
		this.mapHouseSize = mapHouseSize;
	}

	public String getMapJobPayType() {
		return mapJobPayType;
	}

	public void setMapJobPayType(String mapJobPayType) {
		this.mapJobPayType = mapJobPayType;
	}

	public String getMapJobClosingDate() {
		return mapJobClosingDate;
	}

	public void setMapJobClosingDate(String mapJobClosingDate) {
		this.mapJobClosingDate = mapJobClosingDate;
	}

	public String getMapLandmarkTime() {
		return mapLandmarkTime;
	}

	public void setMapLandmarkTime(String mapLandmarkTime) {
		this.mapLandmarkTime = mapLandmarkTime;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "MapVO [mapNumber=" + mapNumber + ", mapApproval=" + mapApproval + ", mapClassification="
				+ mapClassification + ", mapName=" + mapName + ", mapAddress=" + mapAddress + ", mapPhone=" + mapPhone
				+ ", mapPrice=" + mapPrice + ", mapIntroduce=" + mapIntroduce + ", mapPhoto=" + mapPhoto
				+ ", mapHouseOpeningDate=" + mapHouseOpeningDate + ", mapHouseType=" + mapHouseType
				+ ", mapHouseTrading=" + mapHouseTrading + ", mapHouseSize=" + mapHouseSize + ", mapJobPayType="
				+ mapJobPayType + ", mapJobClosingDate=" + mapJobClosingDate + ", mapLandmarkTime=" + mapLandmarkTime
				+ ", memberNumber=" + memberNumber + "]";
	}
}
