package com.springmvc.service;

import java.util.List;

import com.springmvc.model.Document;

import com.springmvc.model.Document;

public interface DocumentService {

	Document findById(int id); 

	List<Document> findAll();

	List<Document> findAllByUserId(int id);

	void saveDocument(Document document);
	void updateDocument(Document document);

	void deleteById(int id);
}
