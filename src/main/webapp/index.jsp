<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Welcome To My Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<style>

body {
  background-image: url("https://th.bing.com/th/id/R.d218ce1a0433640671e2fbdb697f8e24?rik=mUNH36eZqOqrsQ&riu=http%3a%2f%2fi.stack.imgur.com%2fXcZ1s.png&ehk=piHOdLC2W3yFV%2bvH4T07PU0IBFKFsyqYf85qLCleI7I%3d&risl=&pid=ImgRaw&r=0");
}
</style>
</head>
<body  >
	<%@ include file="header.html"%>
	
	<div >
	
	<br>
	<center>
	<button class="btn btn-outline-success"><a href="addUserForm.jsp">Add User</a></button>
	<button class="btn btn-outline-success"><a href="viewUsers.jsp">View Users</a></button>
	</center>
	</div>
</body>
</html>