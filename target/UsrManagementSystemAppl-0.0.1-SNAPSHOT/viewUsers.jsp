<%@page import="com.java.bean.UserBean"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<script src="https://cdn.jsdelivr.net/npm/jquery.fancytable/dist/fancyTable.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<script type="text/javascript">
	$(document).ready(function() {
		$(".data").fancyTable({
			sortColumn:0,
			pagination: true,
			perPage:10,
			globalSearch:true
		});		
	});
</script>
<!-- <style>
 #customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: cyan;
	color: white;
} 

</style> -->
</head>
<body>
	<%@ include file="header.html"%>
	<br>

	<%@page
		import="com.java.bean.UserDAO, com.java.bean.UserBean.*,java.util.*"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	

	<%
	List<UserBean> list = UserDAO.getAllRecords();
	request.setAttribute("list", list);
	%>

<button class="btn btn-warning"><a href="addUserForm.jsp">Add New User</a></button>

<center><h1>Users List</h1></center>
	<table id="customers" class="data" border="1"  border = "1" bordercolor = "green" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Country</th>
			<th>Salary</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getGender()}</td>
				<td>${u.getCountry()}</td>
				<td>${u.getSalary()}</td>
				<td><button class="btn btn-info"><a href="updateForm.jsp?id=${u.getId()}">Edit</a></button></td>
				<td><button class="btn btn-danger"><a href="DeleteUser.jsp?id=${u.getId()}">Delete</a></button></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	
	

</body>
</html>