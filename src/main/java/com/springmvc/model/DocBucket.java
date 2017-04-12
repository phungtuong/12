package com.springmvc.model;


public class DocBucket {
	
	
	String content;

	String description;

	public String getFile() {
		return content;
	}

	public void setFile(String file) {
		this.content = file;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
