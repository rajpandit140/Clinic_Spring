package com.ibm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;



import com.ibm.dao.DataDao;
import com.ibm.domain.user;

public class DataServiceImpl implements DataService {
	@Autowired
	DataDao dataDao;

	public String insertRow(user user1) {
		// TODO Auto-generated method stub
		return dataDao.insertRow(user1);
	}

	public List<user> getList() {
		// TODO Auto-generated method stub
		return dataDao.getList();
	}

	public String deleteRow(String id){
		
		return dataDao.deleteRow(id);
	}

	public user getRowById(String id) {
		return dataDao.getRowById(id);
	}

	public String updateRow(user employee){
		return dataDao.updateRow(employee);
	}


}
