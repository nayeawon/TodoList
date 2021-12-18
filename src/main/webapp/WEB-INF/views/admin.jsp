<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>

<style>
body {
	font-family: "Helvetica";
}

#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
</head>
<body>
<h1>자유게시판</h1>
<h1>Hello ${user.username}</h1>
<table id="list" width="90%">
<tr>
 	<th>Id</th>
 	<th>User Id</th>
 	<th>Username</th>
 	<th>Password</th>
 	<th>Email</th>
 	<th>Phone</th>
 	<th>Gender</th>
 	<th>Edit</th>
 	<th>Delete</th>
</tr>

<c:forEach items="${users}" var="u">
	<tr>
		<td>${u.sid}</td>
		<td>${u.userid}</td>
		<td>${u.username}</td>
		<td>${u.password}</td>
		<td>${u.email}</td>
		<td>${u.phone}</td>
		<td>${u.gender}</td>
		<td><a href="edituser/${u.sid}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.sid}')">Delete</a></td>
	</tr>
</c:forEach>
</table>

</br><a href="../login/logout">Logout</a>

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if(a) location.href='deleteuser/' + id;
	}
</script>

</body>
</html>