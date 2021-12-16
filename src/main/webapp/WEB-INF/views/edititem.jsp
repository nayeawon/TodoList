<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Edit Post</title>
	
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
			background-color: #006bb3;
		}
		
		#edit tr:nth-child(even){background-color: #f2f2f2;}
		#edit tr:hover {background-color: #ddd;}
	
	</style>

</head>
<body>
<h1>글 수정하기</h1>

<form:form commandName="todolistVO" method="get" action="../editok">
	<form:hidden path="id" />
	<table id="edit">
		<tr><td id="name">제목</td><td><form:input path="title"/></td></tr>
		<tr><td id="name">설명</td><td><form:input path="description"/></td></tr>
		<tr><td id="name">카테고리</td><td><form:input path="category"/></td></tr>
		<tr><td id="name">마감일</td><td><form:input path="dueDate"/></td></tr>
		<tr><td id="name">중요도</td><td><form:select path="importance">
			<option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </form:select></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()" />
</form:form>

</body>
</html>
