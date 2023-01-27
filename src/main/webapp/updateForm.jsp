<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Form</title>
        <style>

input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"],


select.form-control {
  background: transparent;
  border: none;
  border-bottom: 1px solid #000000;
  -webkit-box-shadow: none;
  box-shadow: none;
  border-radius: 0;
}

input[type="text"]:focus,
select.form-control:focus {
  -webkit-box-shadow: none;
  box-shadow: none;
}




</style>
    </head>
    <body>
        <%@ include file="header.html" %>  <br>
        <%@page import="com.java.bean.*"%>
 
        <%
            String id = request.getParameter("id");
            UserBean u = UserDAO.getRecordById(Integer.parseInt(id));
        %>
 <center>
        <h1>Edit Form</h1>
        <form action="UpdateUser.jsp" method="post">
            <input type="hidden" name="id" value="<%=u.getId()%>"/>
            <table>
                <tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
                <tr><td>Salary:</td><td><input type="number" step="0.01" name="salary" value="<%= u.getSalary()%>"/></td></tr>
                <tr><td>Gender</td><td><input type="radio" name="gender" value="male"/>Male <input type="radio" name="gender" value="female"/>Female </td></tr>
                <tr><td>Country:</td><td>
                        <select name="country">
                            <option>India</option>
                            <option>New Zealand</option>
                            <option>Srilanka</option>
                            <option>Other</option>
                        </select>
                    </td></tr>
                <tr>
                <td colspan="2">
                
                <input type="submit" value="Edit User"/></td>></tr>
            </table>
        </form>
 </center>
    </body>
</html>