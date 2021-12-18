<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
	<title>Add Post</title>
	
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
			background-color: #006bb3;
		}
		
		#add tr:nth-child(even){background-color: #f2f2f2;}
		#add tr:hover {background-color: #ddd;}
	
	</style>
</head>

<body>
<h1>새 글쓰기</h1>

<form action="addok" method="get">
	<table id="add">
		<tr><td id="name">제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td id="name">설명</td><td><input type="text" name="description"/></td></tr>
		<tr><td id="name">카테고리</td><td><input type="text" name="category"/></td></tr>
		<tr><td id="name">마감일</td><td><input type="text" name="dueDate"/></td></tr>
		<tr><td id="name">중요도</td><td><select id="select" name="importance">
			<option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select></td></tr>
	</table>
	<button type="button" onclick="location.href='list'">목록보기</button>
	<button type="submit">추가하기</button>
	
	
</form>

</body>
</html>
