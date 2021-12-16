<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meth charset="UTF-8">
	<title>Login</title>
	
	<style>
        @import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

		#login {
            display: block;
            position: absolute;
            top: 45%;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, -50%);
			text-align: center;
            font-family: 'Jeju Gothic', sans-serif;
            width: 320px;
            height: 160px;
            padding-left: 30px;
            border: 1px solid black;
            background-color: lightgrey;
		}

        h3 {
            margin-left: -20px;
        }

        #name {
            text-align: left;
        }

        #input {
            border: 1px solid black;
        }

        #submit {
            color: white;
            background-color: #497BAC;
            width: 50px;
            height: 43px;
            border: none;
            border-radius: 2px;
        }
        
        #submit:hover {
        	background-color: 6589AD;
        }

        #register {
            margin-top: 10px;
            color: white;
            background-color: black;
            border: none;
            border-radius: 2px;
            margin-left: -20px;
        }
        
        #register:hover {
        	background-color: 404040;
        }
        
	</style>
</head>
<body>
<div id="login">
	<h3>TodoList</h3>

    <form action="loginOK" method="GET">
        <table id="loginpage">
            <tr><td id="name">ID : </td><td><input id="input" type="text" name="userid"/></td> <td rowspan="2"><input id="submit" type="submit" value="로그인"></td></tr>
            <tr><td id="name">Password : </td><td><input id="input" type="password" name="password"/></td></tr>
        </table>
        <button id="register" type="button" onclick="location.href='register'">회원가입</button>
    </form>
</div>
</body>
</html>

