package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Document;

public interface DocumentDAO {
	List<Document> findAll();

	Document findById(int id);

	void save(Document document);

	List<Document> findAllByUserId(int userId);

	void deleteById(int id);
}
