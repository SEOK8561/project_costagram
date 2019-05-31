<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<title>demasia</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	min-width: 630px;
	background-color: #fafafa;
	min-height: 1200px;
}

a {
	color: black;
	text-decoration: none;
}

header {
	width: 100%;
	position: fixed;
	top: 0px;
	background-color: white;
	display: grid;
	padding: 10px;
	grid-template-columns: 1fr 1fr 1fr;
	justify-content: center;
	text-align: center;
	align-items: center;
	border: 1px solid gainsboro;
}

header img {
	height: 40px;
}

.search {
	position: relative;
	display: inline-block;
	width: 150px;
	margin: 0 auto;
	height: 30px;
}

.material-icons {
	position: absolute;
	left: 37%;
	top: 15%;
	font-size: 15px;
	color: gainsboro;
}

header input {
	width: 100%;
	padding-left: 20px;
	text-align: center;
}

hr {
	height: 40px;
	width: 0;
	background-color: black;
	border-color: black;
	display: inline-block;
}

nav a {
	padding: 0px 10px;
}

main {
	height: 100%;
	margin: 106px 15% 40px;
	background-color: white;
	border: 1px solid gainsboro;
	display: grid;
	grid-template-columns: 1fr 3fr;
}

main>div {
	border: 1px solid gainsboro;
}

.main1>div {
	text-align: center;
	font-size: 17px;
	border-left: white solid 2px;
}

.main1>div>a {
	width: 100%;
	padding: 20px 20px 20px 18px;
	display: inline-block;
}

.main1>div:hover {
	border-left-color: gainsboro;
}

footer {
	display: grid;
	grid-template-columns: repeat(12, 1fr);
	font-size: 12px;
	text-align: center;
	height: 100px;
	margin: 0 15%;
}

input:focus {
	outline: none;
}

input[type=text]:focus {
	text-align: start;
}

.copyright {
	color: gainsboro;
}

.menu2 {
	border-left-color: black !important;
}

.profile {
	padding: 10px;
}

.profile p:nth-child(1) {
	font-size: 20px;
}

.profile p:nth-child(2) {
	color: #3897f0;
	font-size: 13px;
}

.user_ {
	/* margin: 20px 0px 0px 0px;
    padding: 0px 0px 0px 10%;
    border: 0; */
	margin-top: 3%;
	align-items: center;
	font-size: 24px
}

.j_from {
	width: 80%;
	display: grid;
	grid-template-columns: auto auto;
	grid-gap: 20px;
	margin: 5% 3% 0 2%;
}

.pwd {
	display: inline-block;
	text-align: left;
	font-size: 15px;
	width: 100px;
}

.pwd2 {
	display: inline-block;
	text-align: left;
	padding-left: 0;
}

.idonno {
	grid-column: 2/1 span;
	text-align: left;
}

.idonno a {
	color: skyblue;
}

.ok_ {
	width: 100%;
	grid-column: 2/1 span;
	margin-top: 3%;
	display: inline-block;
	text-align: left;
}

input[type=password] {
	padding: 10px;
	background-color: rgb(233, 227, 227);
	border: 0px;
}

input[type=submit] {
	display: inline-block;
	width: 30%;
	height: 100%;
	padding: 10px;
	background-color: skyblue;
	color: white;
	border: 0px;
	border-radius: 3px;
}
</style>
</head>

<body>
	<header>
		<div>
			<img src="/image/media/icon-1562139_960_720.png" alt="x">
			<hr />
			<img src="/image/media/insta.png" alt="X">
		</div>
		<div class="search">
			<input type="text" placeholder="검색" /> <i class="material-icons">search</i>
		</div>
		<nav>
			<a href="/explore"><img src="/image/media/circle.jpg" alt=""></a>
			<a href="#"><img src="/image/media/heart.jpg" alt=""></a> <a
				href="/user/${user.id}"><img src="/image/media/man.jpg" alt=""></a>
		</nav>
	</header>
	<main>

	<div class="main1">

		<div class="menu1">
			<a href="/user/edit">프로필 편집</a>
		</div>
		<div class="menu2">
			<a href="/user/change">비밀번호 변경</a>
		</div>
		<div class="menu3">
			<a href="/user/manage_access">허가된앱</a>
		</div>

		<div class="menu4">
			<a href="/user/settings">이메일 및 SMS</a>
		</div>
		<div class="menu5">
			<a href="/user/contact_history">연락처 관리</a>
		</div>
		<div class="menu6">
			<a href="/user/privacy_and_security">공개 범위 및 보안</a>
		</div>
	</div>
	<div class="main2">
		<div class="user_">
			<img class="key" src="/image/media/Screenshot_70.png" alt="x">godjewon
		</div>
		<form class="j_from" action="/passwordUpdate" method="POST" onsubmit="checkPwd()">
			<div class="pwd">
				<div class="password_1">이전 비밀번호</div>
			</div>
			<div class="pwd2">
				<input id="old_pwd" name="old_pwd" class="p1_t" type="password" size="60" />
			</div>


			<div class="pwd">
				<div class="password_1">새 비밀번호</div>
			</div>
			<div class="pwd2">
				<input id="new_pwd" name="new_pwd" type="password" size="60"></input>
			</div>


			<div class="pwd">
				<div class="password_1">새 비밀번호 확인</div>
			</div>
			<div class="pwd2">
				<input id="new_pwd2" type="password" size="60"></input>
			</div>
			<div class="ok_">
				<input type="submit" value="비밀번호 변경" ></input>
			</div>
			<div class="idonno">
				<a href="#">비밀번호를 잊으셨나요?</a>
			</div>
		</form>
	</div>


	</main>
	<footer>
		<div>
			<a href="#">INSTARGRAM 정보</a>
		</div>
		<div>
			<a href="#">지원</a>
		</div>
		<div>
			<a href="#">홍보 센터</a>
		</div>
		<div>
			<a href="#">API</a>
		</div>
		<div>
			<a href="#">채용 정보</a>
		</div>

		<div>
			<a href="#">개인정보처리방침</a>
		</div>
		<div>
			<a href="#">약관</a>
		</div>
		<div>
			<a href="#">디렉터리</a>
		</div>
		<div>
			<a href="#">프로필</a>
		</div>
		<div>
			<a href="#">해시태그</a>
		</div>

		<div>
			<a href="#">언어</a>
		</div>
		<div>
			<p class="copyright">©️2019 INSTARGRAM</p>
		</div>
		<div></div>

	</footer>
	<script>
		function oldPwdCheck() {
			var old_pwd = document.querySelector("#old_pwd");

				
				let url = '/passwordCheck';
				
				fetch(url,{
					method: "POST"
					alert("비밀번호 완료");
					
					
				})/* .then(function(res){
					console.log(res);
					return res.text();
				}).then(function(result){
					if(result === 'ok'){
						alert('성공');
						return true;
					}else{
						alert('실패');
						return false;
					} 
				})*/.catch();
			
		}

		function checkPwd() {
			
			var new_pwd = document.querySelector("#new_pwd");
			var new_pwd2 = document.querySelector("#new_pwd2");

			console.log(new_pwd.value);
			console.log(new_pwd2.value);

			if (new_pwd.value === new_pwd2.value) {
				if(oldPwdCheck()){
					return true;	
				}
				
					return false;
			} else {
				new_pwd.value = "";
				new_pwd2.value = "";
				new_pwd.focus();
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}
	</script>



</body>

</html>