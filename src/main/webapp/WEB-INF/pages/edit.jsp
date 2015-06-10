<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Being Java Guys | Edit User Details</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">
			Edit Details</div>


<%-- 
		<c:url var="userRegistration" value="saveUser.html" /> --%>
		<form:form id="registerForm12" modelAttribute="comment" method="post"
			action="update">
			<table width="400px" height="150px">
				
<tr>
					<td><form:label path="User_Id">User ID</form:label></td>
					<td><form:input path="User_Id" value="${comment.getUser_Id()}"/></td>
				</tr>
				<tr>
					<td><form:label path="First_Name">First Name</form:label></td>
					<td><form:input path="First_Name" value="${comment.getFirst_Name()}" /></td>
				</tr>
				<tr>
					<td><form:label path="Last_Name">Last Name</form:label></td>
					<td><form:input path="Last_Name" value="${comment.getLast_Name()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Gender">Gender</form:label></td>
					<td><form:input path="Gender" value="${comment.getGender()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Address">Address</form:label></td>
					<td><form:input path="Address" value="${comment.getAddress()}"/></td>
				</tr>
				<tr>
					<td><form:label path="State">State</form:label></td>
					<td><form:input path="State" value="${comment.getState()}"/></td>
				</tr>
				<tr>
					<td><form:label path="City">City</form:label></td>
					<td><form:input path="City" value="${comment.getCity()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Pin_Code">Pin Code</form:label></td>
					<td><form:input path="Pin_Code" value="${comment.getPin_Code()}"/></td>
				</tr>
				<tr>
					<td><form:label path="DOB">DOB</form:label></td>
					<td><form:input path="DOB" value="${comment.getDOB()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Email_Id">Email_Id</form:label></td>
					<td><form:input path="Email_Id" value="${comment.getEmail_Id()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Mobile_No">Mobile_No</form:label></td>
					<td><form:input path="Mobile_No" value="${comment.getMobile_No()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Blood_Group">Blood_Group</form:label></td>
					<td><form:input path="Blood_Group" value="${comment.getBlood_Group()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Occupation">Occupation</form:label></td>
					<td><form:input path="Occupation" value="${comment.getOccupation()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Password">Password</form:label></td>
					<td><form:input path="Password" value="${comment.getPassword()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Current_Medication">Current_Medication</form:label></td>
					<td><form:input path="Current_Medication" value="${comment.getCurrent_Medication()}"/></td>
				</tr>
				<tr>
					<td><form:label path="Current_Problem">Current_Problem</form:label></td>
					<td><form:input path="Current_Problem" value="${comment.getCurrent_Problem()}"/></td>
				</tr>
				
				
				
				<tr>
					<td></td>
					<td><input type="submit" value="Update" />
					</td>
				</tr>
			</table>
		</form:form>


		
	</center>
</body>
</html>
