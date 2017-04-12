package com.springmvc.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Document;
import com.springmvc.dao.AbstractDao;
import com.springmvc.dao.DocumentDAO;
import com.springmvc.model.Document;

@Repository("userDocumentDao")
public class DocumentImpl extends AbstractDao<Integer, Document> implements DocumentDAO {
	@SuppressWarnings("unchecked")
	public List<Document> findAll() {
		Criteria crit = createEntityCriteria();
		return (List<Document>)crit.list();
	}

	public void save(Document document) {
		persist(document);
	}

	
	public Document findById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Document> findAllByUserId(int userId){
		Criteria crit = createEntityCriteria();
		Criteria userCriteria = crit.createCriteria("user");
		userCriteria.add(Restrictions.eq("id", userId));
		return (List<Document>)crit.list();
	}

	
	public void deleteById(int id) {
		Document document =  getByKey(id);
		delete(document);
	}
}
