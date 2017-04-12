package com.springmvc.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="web_info")
public class Document {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer page_id;
	
	@Column(name="content", length=100, nullable=false)
	private String content;
	
	@Column(name="description", length=255)
	private String description;

	public Integer getPage_id() {
		return page_id;
	}


	public void setPage_id(Integer page_id) {
		this.page_id = page_id;
	}


	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
