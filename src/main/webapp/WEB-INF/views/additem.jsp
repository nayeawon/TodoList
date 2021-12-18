<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
	<title>Add Post</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" /><link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css'>
	<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&amp;display=swap'>
	<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css'>
	
	<style>
		body {
			font-family: "Helvetica";
		}
		
		#add {
		  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}
		#add td {
		  border: 1px solid #ddd;
		  padding: 8px;
		}
		
		#name {
			text-align: center;
			color: white;
			
		}
		
		#add tr:nth-child(even){background-color: #f2f2f2;}
		#add tr:hover {background-color: #ddd;}
	
	</style>
</head>

<body>
<h1 class="p-1 h1 text-primary text-center mx-auto display-inline-block">Create New Task</h1>

<form action="addok" method="get">
	<table id="add">
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">설명</td><td><input type="text" name="description"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">카테고리</td><td><input type="text" name="category"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">마감일</td><td><input type="text" name="dueDate"/></td></tr>
		<tr><td id="name" class="p-1 text-primary text-center mx-auto display-inline-block">중요도</td><td><select id="select" name="importance">
			<option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select></td></tr>
	</table>
	<p></p>
	<button type="button" class="w-100 btn btn-lg btn-primary" onclick="location.href='list'">목록보기</button>
	<p></p>
	<button class="w-100 btn btn-lg btn-primary" type="submit">추가하기</button>
	
	
</form>

</body>
</html>
