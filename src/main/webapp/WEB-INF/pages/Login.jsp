<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Login</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">
			Login</div>
		<%-- <form:form id="registerForm1" commandname="user1" method="POST"
			action="registerUser"> --%>
			<form:form method="POST" modelAttribute="login1" action="loginUser">  
			<table width="400px" height="150px">
				<tr>
					<td><form:label path="User_Id">User Name</form:label></td>
					<td><form:input path="User_Id" /></td>
				</tr>
				<tr>
					<td><form:label path="Password">Password</form:label></td>
					<td><form:password path="Password" /></td>
				</tr>
				
				
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" />
					</td>
				</tr>
			</table>
		</form:form>


	<!-- 	<a href="list">Click Here to see User List</a> -->
	</center>
</body>
</html>
