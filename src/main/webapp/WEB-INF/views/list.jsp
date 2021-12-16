<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TodoList</title>

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
<h1>TodoList</h1>
<h1>Hello ${user.username}</h1>
<table id="list" width="90%">
<tr>
 	<th>제목</th>
 	<th>설명</th>
 	<th>카테고리</th>
 	<th>마감일</th>
 	<th>완료</th>
 	<th>중요도</th>
 	<th>수정</th>
 	<th>삭제</th>
</tr>

<c:forEach items="${item}" var="u">
	<tr>
		<td>${u.title}</td>
		<td>${u.description}</td>
		<td>${u.category}</td>
		<td>${u.dueDate}</td>
		<td>${u.isCompleted}</td>
		<td>${u.importance}</td>
		<td><a href="edititem/${u.id}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">삭제</a></td>
	</tr>
</c:forEach>
</table>

</br><a href="add">항목 추가</a>
</br><a href="../login/logout">로그아웃</a>

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>

</body>
</html>