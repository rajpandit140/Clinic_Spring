package com.ibm.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import org.springframework.beans.factory.annotation.Autowired;






import com.ibm.domain.user;

public class DataDaoImpl implements DataDao {


	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public String insertRow(user user1) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		/*save()--if identifier is not present
		 * 
		 * update()--if identifier is present
		 * 
		 * 
		 * */
		
		session.saveOrUpdate(user1);
		tx.commit();
		Serializable id = session.getIdentifier(user1);
		session.close();
		return (String) id;
		
	}

	
	public List<user> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
	//	Transaction tx = session.beginTransaction();
		List<user> employeeList = session.createQuery("from user").list();
	    
		
		//	tx.commit();
		session.close();
		return employeeList;
	}

	public String deleteRow(String id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		user employee = (user) session.load(user.class, id);
		
		/*load()--returns the proxy object(objectnotfound exception if nthng)
		 get() --returns by hitting actually DB(null if nthing)*/
		session.delete(employee);
		tx.commit();
		Serializable ids = session.getIdentifier(employee);
		session.close();
		return (String) ids;
	}

	public user getRowById(String id) {
		Session session = sessionFactory.openSession();
		user employee = (user) session.load(user.class, id);
		return employee;
	}


	public String updateRow(user employee) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(employee);
		tx.commit();
		Serializable id = session.getIdentifier(employee);
		session.close();
		return (String) id;
	}



}
