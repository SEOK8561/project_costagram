<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<script type="text/javascript" src="/js/jquery-1.12.3.js"
	charset="utf-8"></script>
<script>
	var sel_file;

	$(document).ready(function() {
		$('#input_img').on("change", handleImgFileSelect);
	});

	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$('#img').attr('src', e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>

<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	background-color: rgb(250, 250, 250);
}

.container {
	width: 700px;
	margin: 0 auto;
	text-align: center;
}

.box {
	
}

.image {
	margin-top: 20px;
}

.bigbox {
	width: 400px;
	border: 1px solid lightgray;
	text-align: center;
	padding-bottom: 20px;
}

.smallbox {
	width: 400px;
	border: 1px solid lightgray;
}

.table {
	margin: 10px;
	display: inline-block;
}

.text {
	font-size: 12px;
	margin: 20px;
	text-align: center;
}

.hr {
	width: 30%;
	border: 1px solid lightgray;
	display: inline-block;
	font-size: 12px;
}

input[type=text] {
	height: 31.3px;
	width: 268.02px;
	background-color: rgb(250, 250, 250);
	border: 1px solid lightgray;
	padding: 19px;
	margin: 2px;
}

input[type=file] {
	width: 268.02px;
	margin-bottom: 10px;
}

input[type=password] {
	height: 31.3px;
	width: 268.02px;
	background-color: rgb(250, 250, 250);
	border: 1px solid lightgray;
	padding: 19px;
	margin: 2px;
}

input[type=button], input[type=submit] {
	height: 31.3px;
	width: 268.02px;
	background-color: #3897F0;
	border-radius: 5px;
	border: 0px;
	color: white;
}

i {
	height: 31.3px;
	width: 268.02px;
	background-color: #3897F0;
	border-radius: 5px;
	border: 0px;
	color: white;
	padding: 9px 0px;
}

footer {
	display: block;
	position: relative;
}

p {
	width: 400px;
}

}
.under li {
	display: inline-block;
	padding: 5px;
	margin-top: 60px;
}

.under1 {
	font-size: 10px;
	text-decoration: none;
	color: skyblue;
}

.box {
	margin: 50px;
	width: 400px;
	display: inline-block;
}

.img_wrap {
	width: 300px;
	margin-top: 20px;
}

.img_wrap img {
	max-width: 100%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="box">
			<div class="bigbox">

				<div>
					<img src="/image/auth/font.png" alt="x" class="image">
				</div>
				<br />

				<div class="text">
					<hr class="hr" />
					사진업로드
					<hr class="hr" />
				</div>
				<!-- 섬네일은 아래 주소 참고 -->
				<!-- https://medium.com/@asadise/create-thumbnail-for-an-image-in-spring-framework-49776c873ea1 -->
			<form action="/images/uploadProc" method="post"
				enctype="multipart/form-data">
				<table class="table">
					<tr>
						<td><input id="input_img" type="file" name="file"
							placeholder="사진파일"></td>
					</tr>
					<tr>
						<td>
							<div class="img_wrap">
								<img id="img" />
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" name="caption" placeholder="이미지 소개"></td>
					</tr>
					<tr>
						<td><input type="text" name="location" placeholder="위치"></td>
					</tr>
					<tr>
						<td><input type="text" name="tags" placeholder="#태그"></td>
					</tr>
				</table>
				<input type="submit" value="업로드">
			</form>

			</div>
			<div class="smallbox">
				<div class=text>
					<a href="javascript:window.history.back()" class="under1">뒤로가기</a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>