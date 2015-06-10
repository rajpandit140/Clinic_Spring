package com.ibm.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="patient_profile")
public class user {

	@Id
	private String User_Id;
	@NotEmpty
	private String First_Name;
	private String Last_Name;
	private String Gender;
	private String Address;
	private String State;
	private String City;
	private int Pin_Code;
	private Date DOB;
	private String Email_Id;
	private String Mobile_No;
	private String Blood_Group;
	private String Occupation;
	private String Password;
	private String Current_Medication;
	private String Current_Problem;
	public String getUser_Id() {
		return User_Id;
	}
	public void setUser_Id(String user_Id) {
		User_Id = user_Id;
	}
	public String getFirst_Name() {
		return First_Name;
	}
	public void setFirst_Name(String first_Name) {
		First_Name = first_Name;
	}
	public String getLast_Name() {
		return Last_Name;
	}
	public void setLast_Name(String last_Name) {
		Last_Name = last_Name;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public int getPin_Code() {
		return Pin_Code;
	}
	public void setPin_Code(int pin_Code) {
		Pin_Code = pin_Code;
	}
	public Date getDOB() {
		return DOB;
	}
	public void setDOB(Date dOB) {
		DOB = dOB;
	}
	public String getEmail_Id() {
		return Email_Id;
	}
	public void setEmail_Id(String email_Id) {
		Email_Id = email_Id;
	}
	public String getMobile_No() {
		return Mobile_No;
	}
	public void setMobile_No(String mobile_No) {
		Mobile_No = mobile_No;
	}
	public String getBlood_Group() {
		return Blood_Group;
	}
	public void setBlood_Group(String blood_Group) {
		Blood_Group = blood_Group;
	}
	public String getOccupation() {
		return Occupation;
	}
	public void setOccupation(String occupation) {
		Occupation = occupation;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCurrent_Medication() {
		return Current_Medication;
	}
	public void setCurrent_Medication(String current_Medication) {
		Current_Medication = current_Medication;
	}
	public String getCurrent_Problem() {
		return Current_Problem;
	}
	public void setCurrent_Problem(String current_Problem) {
		Current_Problem = current_Problem;
	}
	

}
