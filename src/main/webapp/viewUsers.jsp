<%@page import="com.java.bean.UserBean"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



<link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
   <!--  <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script> -->
    <script type="text/javascript" src="https://unpkg.com/jquery.fancytable@1.0.26/dist/fancyTable.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<style>

body {
  background-image: url("https://th.bing.com/th/id/R.d218ce1a0433640671e2fbdb697f8e24?rik=mUNH36eZqOqrsQ&riu=http%3a%2f%2fi.stack.imgur.com%2fXcZ1s.png&ehk=piHOdLC2W3yFV%2bvH4T07PU0IBFKFsyqYf85qLCleI7I%3d&risl=&pid=ImgRaw&r=0");
}
</style>
    <script>
        $(document).ready(function () {
        	$(".data").fancyTable({
            	pagination: true,
            	paginationClass: "btn btn-light",
            	paginationClassActive: "active",
            	pagClosest: 2,
            	perPage: 3,
            	}); 
    });
    </script>
<style>
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

</style>
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

<center><button class="btn btn-warning"><a href="addUserForm.jsp">Add New User</a></button></center>

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
				<td><button class="btn btn-outline-info"><a href="updateForm.jsp?id=${u.getId()}">Edit</a></button></td>
				<td><button class="btn btn-outline-danger"><a href="DeleteUser.jsp?id=${u.getId()}">Delete</a></button></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	
	

</body>
</html>