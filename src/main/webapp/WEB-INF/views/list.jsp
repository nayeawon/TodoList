<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge" /><link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&amp;display=swap'>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css'>
<title>TodoList</title>

<style>
body {
    font-family: "Open Sans", sans-serif;
    line-height: 1.6;
}

.add-todo-input,
.edit-todo-input {
    outline: none;
}

.add-todo-input:focus,
.edit-todo-input:focus {
    border: none !important;
    box-shadow: none !important;
}

.view-opt-label,
.date-label {
    font-size: 0.8rem;
}

.edit-todo-input {
    font-size: 1.7rem !important;
}

.todo-actions {
    visibility: hidden !important;
}

.todo-item:hover .todo-actions {
    visibility: visible !important;
}

.todo-item.editing .todo-actions .edit-icon {
    display: none !important;
}
</style>
</head>
<body>
<!-- App title section -->
<div class="row m-1 p-4">
	<div class="col">
		<div class="p-1 h1 text-primary text-center mx-auto display-inline-block">
			<i class="fa fa-check bg-primary text-white rounded p-2"></i>
                <u>${user.username}'s Todo-s</u>
        </div>
    </div>
</div>
<!-- Create todo section -->
<div class="row m-1 p-3">
	<div class="col col-11 mx-auto">
		<div class="row bg-white rounded shadow-sm p-2 add-todo-wrapper align-items-center justify-content-center">
			<div class="col">
				<input class="form-control form-control-lg border-0 add-todo-input bg-transparent rounded" type="text" placeholder="Press button ..">
            </div>
            <div class="col-auto m-0 px-2 d-flex align-items-center">
            	<label class="text-secondary my-2 p-0 px-1 view-opt-label due-date-label d-none">Due date not set</label>
                <i class="fa fa-calendar my-2 px-1 text-primary btn due-date-button" data-toggle="tooltip" data-placement="bottom" title="Set a Due date"></i>
                <i class="fa fa-calendar-times-o my-2 px-1 text-danger btn clear-due-date-button d-none" data-toggle="tooltip" data-placement="bottom" title="Clear Due date"></i>
            </div>
            <div class="col-auto px-0 mx-0 mr-2">
                <button type="button" class="btn btn-primary" onclick=add()>Add</button>
            </div>
        </div>
    </div>
</div>
<!--  List todo section -->
<c:forEach items="${item}" var="u">
	<div class="row mx-1 px-5 pb-3 w-80">
        <div class="col mx-auto">
            <!-- Todo Item -->
            <div class="row px-3 align-items-center todo-item rounded">
                <div class="col-auto m-1 p-0 d-flex align-items-center">
                    <h2 class="m-0 p-0">
                        <i class="fa fa-square-o text-primary btn m-0 p-0 d-none" data-toggle="tooltip" data-placement="bottom" title="Mark as complete"></i>
                        <i class="fa fa-check-square-o text-primary btn m-0 p-0" data-toggle="tooltip" data-placement="bottom" title="Mark as todo"></i>
                    </h2>
                </div>
                <div class="col px-1 m-1 d-flex align-items-center">
                    <input type="text" class="form-control form-control-lg border-0 edit-todo-input bg-transparent rounded px-3" readonly value=${u.title} title=${u.title}/>
                </div>
                <div class="col-auto m-1 p-0 px-3 d-none">
                </div>
                <div class="col-auto m-1 p-0 todo-actions">
                    <div class="row d-flex align-items-center justify-content-end">
                        <h5 class="m-0 p-0 px-2">
                            <i class="fa fa-pencil text-info btn m-0 p-0" data-toggle="tooltip" data-placement="bottom" title="Edit todo" onclick=edit(${u.id})></i>
                        </h5>
                        <h5 class="m-0 p-0 px-2">
                            <i class="fa fa-trash-o text-danger btn m-0 p-0" data-toggle="tooltip" data-placement="bottom" title="Delete todo" onclick=delete_ok(${u.id})></i>
                        </h5>
                    </div>
                    <div class="row todo-created-info">
                        <div class="col-auto d-flex align-items-center pr-2">
                            <i class="fa fa-info-circle my-2 px-2 text-black-50 btn" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Created date"></i>
                            <label class="date-label my-2 text-black-50">${u.dueDate}</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>

<div class="col-auto px-0 mx-0 mr-2" style="location: center">
	<br><button type="button" class="btn btn-primary" onclick=logout()>Logout</button>
</div>

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
	
	function add() {
		location.href = 'add';
	}
	
	function logout() {
		location.href = "../login/logout";
	}
	
	function edit(id) {
		location.href = "./edititem/" + id;
	}
	window.onload = function () {
	    bootlint.showLintReportForCurrentDocument([], {
	        hasProblems: false,
	        problemFree: false
	    });

	    $('[data-toggle="tooltip"]').tooltip();

	    function formatDate(date) {
	        return (
	            date.getDate() +
	            "/" +
	            (date.getMonth() + 1) +
	            "/" +
	            date.getFullYear()
	        );
	    }

	    var currentDate = formatDate(new Date());

	    $(".due-date-button").datepicker({
	        format: "dd/mm/yyyy",
	        autoclose: true,
	        todayHighlight: true,
	        startDate: currentDate,
	        orientation: "bottom right"
	    });

	    $(".due-date-button").on("click", function (event) {
	        $(".due-date-button")
	            .datepicker("show")
	            .on("changeDate", function (dateChangeEvent) {
	                $(".due-date-button").datepicker("hide");
	                $(".due-date-label").text(formatDate(dateChangeEvent.date));
	            });
	    });
	};
</script>

</body>
</html>