<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meth charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Register</title>

    <style>
        @import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
        body {
            background-color: #F5F6F7;
            font-family: 'Jeju Gothic';
        }

        #register {
            display: block;
            position: absolute;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, 0);
			text-align: center;
		}

        #signup {
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 20px;
            
        }

        #name {
            padding-right: 30px;
            padding-top: 10px;
        }

        em {
            color: red;
        }

        #input {
            border: 1px solid lightgrey;
            width: 500px;
            height: 50px;
            font-size: 12pt;
            padding-left: 8px;
            border-radius: 3px;
        }

        #select {
            border: 1px solid lightgrey;
            width: 500px;
            height: 50px;
            font-size: 11pt;
            -webkit-appearance: none;
            background-color: white;
            padding-left: 8px;
            border-radius: 3px;
        }

        #submit {
            -webkit-appearance: none;
            width: 100px;
            height: 50px;
            font-size: 11pt;
            border: none;
            border-radius: 3px;
            color: white;
            background-color: 497BAC;
        }
        
        #submit:hover {
        	background-color: 6589AD;
        }

        #cancel {
            -webkit-appearance: none;
            width: 100px;
            height: 50px;
            font-size: 11pt;
            border: none;
            border-radius: 3px;
            color: white;
            background-color: grey;
        }
        
        #cancel:hover {
        	background-color: A0A0A0;
        }
        
        #idcheck {
        	-webkit-appearance: none;
        	font-size: 9pt;
        	background-color: white;
        	border: 1px solid lightgrey;
        	border-radius: 3px;
        }
    </style>
</head>
<body>
<div id="register">
    <h3>회원가입</h3>
    <form action="registerOK" method="GET" name="register" onsubmit="return checkInfo()">
        <table id="signup">
            <tr><td id="name">아이디<em>*</em></td></tr>
            <tr><td><input id="input" type="text" name="userid"></td></tr>
            <tr><td><button id="idcheck" type="button" onclick="dupCheck()">중복체크</button>
            <tr><td id="name">비밀번호<em>*</em></td></tr>
            <tr><td><input id="input" type="text" name="password"></td></tr>
            <tr><td id="name">비밀번호 재확인<em>*</em></td></tr>
            <tr><td><input id="input" type="password" name="pwcheck"></td></tr>
            <tr><td id="name">닉네임<em>*</em></td></tr>
            <tr><td><input id="input" type="text" name="username"></td></tr>
            <tr><td id="name">성별<em>*</em></td></tr>
            <tr><td><select id="select" name="gender">
                <option value="gender">성별</option>
                <option value="male">남자</option>
                <option value="female">여자</option>
              </select></td></tr>
            <tr><td id="name">이메일</td></tr>
            <tr><td><input id="input" type="mail" name="email"></td></tr>
            <tr><td id="name">휴대전화</td></tr>
            <tr><td><input id="input" type="text" name="phone"></td></tr>
        </table>
        <input id="submit" type="submit" value="가입하기"> <input id="cancel" type="button" value="취소" onclick="location.href='login'">
    </form>
</div>

<script>
	function checkInfo() {
		if(!document.register.userid.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if(!document.register.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		if(document.register.password.value != document.register.pwcheck.value) {
			alert("비밀번호를 확인하세요.");
			return false;
		}
		
		if(!document.register.username.value) {
			alert("닉네임을 입력하세요.");
			return false;
		}
		
		if(document.register.gender.value == "gender") {
			alert("성별을 선택하세요.");
			return false;
		}
	}
	
	function dupCheck() {
		
	}
</script>
</body>
</html>