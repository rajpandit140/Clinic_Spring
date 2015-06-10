package com.ibm.services;


import java.util.List;



import com.ibm.domain.user;

public interface DataService {

	public String insertRow(user user1);
	public List<user> getList();
	public String deleteRow(String id);
	public user getRowById(String id);
	public String updateRow(user employee);

}
