<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Edit User</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" /><link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css'>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&amp;display=swap'>
	<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css'>
	<style>
		body {
			font-family: "Helvetica";
		}
		
		#edit {
		  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}
		#edit td {
		  border: 1px solid #ddd;
		  padding: 8px;
		}
		
		#name {
			text-align: center;
			color: white;
		}
		
		#edit tr:nth-child(even){background-color: #f2f2f2;}
		#edit tr:hover {background-color: #ddd;}
	
	</style>

</head>
<body>
<h1 class="p-1 h1 text-primary text-center mx-auto display-inline-block">Edit User</h1>

<form:form commandName="userVO" method="get" action="../edituserok">
	<form:hidden path="sid" />
	<table id="edit">
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">User ID</td><td><form:input path="userid"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">Username</td><td><form:input path="username"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">Password</td><td><form:input path="password"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">Email</td><td><form:input path="email"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">Phone</td><td><form:input path="phone" /></td></tr>
        <tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">Gender</td><td><form:select path="gender">
			<option value="gender">성별</option>
            <option value="male">남자</option>
            <option value="female">여자</option>
        </form:select></td></tr>
	</table>
	<p></p>
	<button type="submit" class="w-100 btn btn-lg btn-primary">수정하기</button>
	<p></p>
	<button type="button" class="w-100 btn btn-lg btn-primary" onclick="history.back()">취소하기</button>
	<!-- <input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()" /> -->
</form:form>

</body>
</html>
