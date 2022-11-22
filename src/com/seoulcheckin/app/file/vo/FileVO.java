package com.seoulcheckin.app.file.vo;

public class FileVO {
	private String fileSystemName;
	private String fileOriginalName;
	private int mapNumber;
	
	public FileVO() {;}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}

	public int getMapNumber() {
		return mapNumber;
	}

	public void setMapNumber(int mapNumber) {
		this.mapNumber = mapNumber;
	}

	@Override
	public String toString() {
		return "FileVO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName + ", mapNumber="
				+ mapNumber + "]";
	}
}
