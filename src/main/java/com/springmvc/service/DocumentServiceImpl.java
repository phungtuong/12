package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.DocumentDAO;
import com.springmvc.model.Document;


@Service("DocumentService")
@Transactional
public class DocumentServiceImpl implements DocumentService{
	
	@Autowired
	DocumentDAO dao;

	public Document findById(int id) {
		return dao.findById(id);
	}

	public List<Document> findAll() {
		return dao.findAll();
	}

	public List<Document> findAllByUserId(int userId) {
		return dao.findAllByUserId(userId);
	}
	
	public void saveDocument(Document document){
		dao.save(document);
	}

	public void deleteById(int id){
		dao.deleteById(id);
	}

	@Override
	public void updateDocument(Document document) {
		System.out.println(document.getPage_id());
		String s=document.getPage_id().toString();
		int id=Integer.parseInt(s);
		Document entity=dao.findById(id);
		if(entity!=null){
			entity.setDescription(document.getDescription());
			entity.setContent(document.getContent());
		}
		
	}
	
}