<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<script>
   $(document).ready(function() {
   var date;
    $("#DOB").datepicker({
    
   /*  onSelect: function() { date = $(this).datepicker('getDate');
    alert(date); */
   
    dateFormat :"yy-mm-dd"
  /*  var date1 = $("#DOB").val();
      $("#DOB").val(date1); */
    
    });
       
        // $("#DOB").Val(date);
  }); 
  
  
  </script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Registration Form</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">
			Registration Form</div>
		<%-- <form:form id="registerForm1" commandname="user1" method="POST"
			action="registerUser"> --%>
			<form:form method="POST" modelAttribute="user1" action="registerUser">  
			<table width="400px" height="150px">
				<tr>
					 <td><form:label path="First_Name">First_Name</form:label></td> 
					<%-- <td>First Name : </td>--%>
					<td><form:input path="First_Name" /><font color="red"><form:errors
				path="First_Name" /></font></td> 
				</tr>
				<tr>
					<td><form:label path="Last_Name">Last_Name</form:label></td>
					<td><form:input path="Last_Name" /></td>
				</tr>
				<tr>
					<td><form:label path="Email_Id">Email_Id</form:label></td>
					<td><form:input path="Email_Id" /></td>
				</tr>
				<tr>
					<td><form:label path="Mobile_No">Mobile_No</form:label></td>
					<td><form:input path="Mobile_No" /></td>
				</tr>
				
				<tr>
					<td><form:label path="Gender">Gender</form:label></td>
					<td><form:input path="Gender" /></td>
				</tr>
				<tr>
					<td><form:label path="Address">Address</form:label></td>
					<td><form:input path="Address" /></td>
					
				</tr>
				<tr>
					<td><form:label path="State">State</form:label></td>
					<td><form:input path="State" /></td>
					
				</tr>
				
				<tr>
					<td><form:label path="City">City</form:label></td>
					<td><form:input path="City" /></td>
					
				</tr>
				
				<tr>
					<td><form:label path="Pin_Code">Pin_Code</form:label></td>
					<td><form:input path="Pin_Code" /></td>
					
				</tr>
				
				
				<tr>
					<td><form:label path="DOB" name="DOB">DOB</form:label></td>
					<td><form:input path="DOB" id="DOB" name="DOB" /></td>
					
				</tr>
				
				<%-- <tr>
					<td><form:label path="Email_Id">Email_Id</form:label></td>
					<td><form:input path="Email_Id" /></td>
					
				</tr>
				<tr>
					<td><form:label path="Mobile_No">Mobile_No</form:label></td>
					<td><form:input path="Mobile_No" /></td>
					
				</tr> --%>
				<tr>
					<td><form:label path="Blood_Group">Blood_Group</form:label></td>
					<td><form:input path="Blood_Group" /></td>
					
				</tr>
				<tr>
					<td><form:label path="Occupation">Occupation</form:label></td>
					<td><form:input path="Occupation" /></td>
					
				</tr>
				
				<tr>
					<td><form:label path="Current_Medication">Current_Medication</form:label></td>
					<td><form:input path="Current_Medication" /></td>
					
				</tr>
				
				<tr>
					<td><form:label path="Current_Problem">Current_Problem</form:label></td>
					<td><form:input path="Current_Problem" /></td>
					
				</tr>
				<tr>
					<td><form:label path="User_Id">User_Id</form:label></td>
					<td><form:input path="User_Id" /></td>
					
				</tr>
				<tr>
					<td><form:label path="Password">Password</form:label></td>
					<td><form:password path="Password" /></td>
					
				</tr>
				
				
				<tr>
					<td></td>
					<td><input type="submit" value="Register" />
					</td>
				</tr>
			</table>
		</form:form>


	<!-- 	<a href="list">Click Here to see User List</a> -->
	</center>
</body>
</html>
