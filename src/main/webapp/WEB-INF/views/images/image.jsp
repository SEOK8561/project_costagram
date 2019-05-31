<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link href="/css/style.css" type="text/css" rel="stylesheet">
<script src="/js/jquery-1.12.3.js" type="text/javascript"></script>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
.big {
	display: grid;
	/* background-color: aquamarine;  */
	justify-content: center;
	border-bottom: 1px solid #999;
}
.small {
	display: grid;
	grid-template-columns: auto 1fr 1fr;
	/* background-color: beige; */
	height: 60px;
	grid-gap: 215px;
	margin-top: 28px;
}
.a1 {
	margin-top: 5px;
}
.a2 {
	width: 200px;
	height: 30px;
}
.small1 {
	display: grid;
	grid-template-columns: auto auto auto;
}
.line {
	background-color: black;
	height: 25px;
	margin-top: 7px;
	width: 1px;
	margin-left: 15px;
	margin-right: 10px;
	/* margin: -35px 43px;  */
}
.small3 {
	display: grid;
	grid-template-columns: auto auto auto;
	margin-left: 55px;
	margin-top: 5px;
}
.a3 {
	margin-top: 10px;
}
.a5 {
	margin-left: 10px;
}
.big1 {
	display: grid;
	/* background-color: aquamarine; */
	justify-content: center;
	grid-template-columns: auto auto;
	margin-right: 300px;
	margin-top: 50px;
	/* background-color: beige; */
}
.image-list {
	display: grid;
}
.small1-2 {
	border: 1px solid #999;
	background-color: white;
	margin-bottom: 20px;
}
.small1-3 {
	grid-column: 1/3 span;
}
.image-header {
	display:grid;
	grid-template-columns: auto auto;
	justify-content: space-between;
}
.b1 {
	margin-left: 15px;
	margin-top: 10px;
	display:grid;
	grid-template-columns: auto auto;
}
.info {
	padding-left: 10px;
}
.location {
	padding-top:2px;
	font-size:9px;
}
.b2 {
	margin-top: 20px;
}
.b3 {
	margin-top: 10px;
	margin-left: -60px;
}
.b4 {
	text-decoration: none;
	margin-left: -520px;
	color: black;
	font-weight: bold;
}
.c {
	grid-column: 1/3 span;
}
.small1-4 {
	display: grid;
	grid-template-columns: auto auto auto auto auto;
	margin-top: 6px;
	justify-content: space-between;
	grid-column: 1/3 span;
}
.small1-5 {
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 15px;
	margin-left: 15px;
}
.c__4 {
	margin-left: 150px;
}
.c__5 {
	margin-left: 220px;
}
.d {
	margin-left: 10px;
	margin-top: 5px;
	font-size: 15px;
	font-weight: bold;
	grid-column: 1/3 span;
}
.e {
	margin-left: 10px;
	margin-top: 5px;
	grid-column: 1/3 span;
}
.g {
	width: 602px;
	height: 40px;
	position: relative;
}
.f {
	display: grid;
	grid-template-columns: auto auto;
}
.h {
	position: absolute;
	margin-left: 560px;
	margin-top: 10px;
	color: #003569;
	text-decoration: none;
}
input:focus {
	outline: none;
}
.small2-1 {
	display: grid;
	grid-template-columns: auto auto;
	grid-template-rows: auto auto auto auto;
	margin-left: 50px;
	position: fixed;
	justify-content: space-between;
}
.ax {
	margin-top: 20px;
	font-weight: bold;
	margin-right: 150px;
}
.ax1 {
	margin-top: 7px;
	padding-right: 90px;
	margin-left: 10px;
}
.small2-2 {
	display: grid;
	grid-template-columns: auto auto;
	grid-template-rows: auto auto auto auto;
	border: 1px solid black;
	grid-column: 1/2 span;
	margin-top: 10px;
	overflow-y: scroll;
	height: 200px;
}
.ax2 {
	margin-left: 65px;
	margin-top: 10px;
	font-weight: bold;
	font-size: 13px;
}
.ax3 {
	text-decoration: none;
}
.ax4 {
	margin-left: 10px;
}
.bx1 {
	margin-left: -80px;
}
.ax5 {
	margin-top: 13px;
	font-weight: bold;
	font-size: 15px;
}
.bx2 {
	text-decoration: none;
	color: black;
}
.ax11 {
	margin-top: 10px;
	margin-left: 5px;
}
.ax12 {
	margin-top: 15px;
	grid-column: 1/2 span;
	font-size: 12px;
}
.ax13 {
	color: #999;
	text-decoration: none;
}
.tag {
	color:#003569;
}
.like_people {
	text-decoration:none;
	color:#003569;
}
input[type=button]{
    height: 31.3px;
    width: 600px;
    background-color: #3897F0;
    border-radius: 5px;
    border: 0px;
    color: white;
}
.like_people {
	display:inline-block;
}
</style>
</head>

<body>
	<div class="big">
		<div class="small">
			<div class="small1">
				<div class="a0">
					<a href="/images"><img src="/image/images/40.png" width="30px"
						height="35px"></a>
				</div>
				<div class="line"></div>
				<div class="a1">
					<a href="/images"><img src="/image/images/logo.png" width="100px"
						height="30px"></a>
				</div>
			</div>
			<div class="small2">
				<div class="a3">
					<input class="a2" type="text"
						placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;검색">
				</div>
			</div>

			<div class="small3">
				<a href="/explore"><img src="/image/images/41.png" height="30px"></a>
	
				<div class="a5">
					<a href="#"><img src="/image/images/42.png" height="30px"></a>
				</div>
		
				<div class="a5">
					<a href="/user/${user.id}"><img src="/image/images/43.png" height="30px"></a>
				</div>
			</div>
		</div>

	</div>


	<div class="big1">
		<div class="image-list">

			<c:forEach var="image" items="${imageList}" varStatus="loop">
			<!--  start item1  -->
				<div class="small1-2">
					<div class="image-header">
						<div class="b1">
							<div class="profile">
								<a href="#"><img src="/image/images/44.jpg"></a>
							</div>
							<div class="info">
								<div class="username"><b>${image.user.username}</b></div>
								<div class="location">${image.location}</div>
							</div>
						</div>
						<div class="b3">
							<a href="#"><img src="/image/images/46.png" width="50px"></a>
						</div>
					</div>
					<div class="small1-3">
						<img src="${image.filePath}" width="600px" height="500px">
					</div>
					<div class="small1-4">
						<div class="small1-5">

							<c:set var="like_check" value="false" />

							<c:forEach var="like" items="${image.likes}">
								<c:if test="${like.user.id eq user.id}">	
									<c:set var="like_check" value="true" />
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${like_check eq true}">

									<div class="c__1 c__1${image.id}">
										<img src="/image/images/49_like.png" onclick="like(${image.id},${fn:length(image.likes)}, -1)" height="30px" />
									</div>
								</c:when>
								<c:otherwise>
									<div class="c__1 c__1${image.id}">
										<img src="/image/images/49_unlike.png" onclick="like(${image.id},${fn:length(image.likes)}, 1)" height="30px" />
									</div>		
								</c:otherwise>
							</c:choose>

							<div class="c__2">
								<a href="#"><img src="/image/images/48.png" height="30px"></a>
							</div>
							<div class="c__3">
								<a href="#"><img src="/image/images/50.png" height="30px"></a>
							</div>
						</div>
						<div class="c__4">
							<a href="#"><img src="/image/images/52.png" height="30px"></a>
						</div>
						<div class="c__5">
							<a href="#"><img src="/image/images/51.png" height="30px"></a>
						</div>
					</div>

					<div class="d like${image.id}"><b>좋아요${fn:length(image.likes)}개</b></div>

					<div class="e">
						<b>${image.user.username}</b> ${image.caption}<br />
						<c:forEach var="tag" items="${image.tags}">
							<span class="tag">#${tag.name}</span>
						</c:forEach><br />

						<b>좋아요 한 사람들</b>
						<div class="like_people like_people${image.id}">
						<c:forEach var="like" items="${image.likes}">
							<a href="#" class="like_people${like.user.username}${image.id}">${like.user.username}</a> 
						</c:forEach>
						</div>

					</div>
					<div class="f">
						<input class="g" type="text" placeholder="댓글 달기" /><a class="h"
							href="#">게시</a>
					</div>

				</div> 
			<!--  end of item1 -->
			</c:forEach>
			

		</div>
		<!-- end of image-list -->

		<!--  START side BAR -->
		<div>
			<div class="small2-1">

				<div>
					<a href="#" class="popup1"><img src="/image/images/61.png" alt="x" width="50px" height="50px"/></a>
				</div>
				<div class="ax">
					<a class="bx2" href="#">${user.username}</a>
				</div>


				<div class="small2-2">
					<div class="ax1">최근 게시물</div>
					<div class="ax2">
						<a class="ax3" href="#">모두 보기</a>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

				</div>
				
				<div class="small2-2">
					<div class="ax1">최근 핫이슈</div>
					<div class="ax2">
						<a class="ax3" href="#">모두 보기</a>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

				</div>

				
				<div class="ax12">
					<a class="ax13" href="#">instagram 정보.지원.홍보 센터.API,채용정보<br />
						개인정보처리방침.약관.디렉터리.프로필.해시태그.<br /> 언어
					</a>
				</div>
				<div class="ax12">
					<div class="ax13">© 2019 INSTAGRAM</div>
				</div>
			</div>

		</div>
		<!--  END OF side BAR -->
		<div>
			<input type="button" value="더보기" onClick="paging()"/>
			<br/><br/>
		</div>

	</div>

	
<!-- Modal 시작 -->
<div id="modal1">
  <div id="pop1">
    <div class="img"> <img src="/image/img.jpg" alt="최주호사진">
      <p>최주호</p>
      <button class="basic_btn">팔로우</button>
      <span>X</span> </div>
    <div class="close">
      <button type="button" id="btn-close">닫기</button>
    </div>
  </div>
</div>
<!-- Modal 끝 --> 
<!-- wrap 끝 --> 
<script src="/js/script.js" type="text/javascript"></script>

	<script>
		function paging(){
			if(${maxPage} == ${page}){
				alert("마지막 페이지입니다");
			}else{
				location.href="/images?page="+${page+1};	
			}	
		}
		
		function like(imageId, count, check){ //1  3  -1
			if(check == -1){
				fetch("/unlike/image/"+imageId,{
					method:"POST"
				}).then(function(res){
					return res.text();
				}).then(function(result){
					//하트 없애기
					let el = document.querySelector('.c__1'+imageId);
					el.innerHTML = "<img src='/image/images/49_unlike.png' onclick='like("+imageId+","+(count-1)+", 1)' height='30px' />";
					
					//좋아요 개수
					let el2 = document.querySelector('.like'+imageId);
					el2.innerHTML = "<b>좋아요"+(count-1)+"개</b>";
					
					//좋아요 한 사람들
					let username = "${user.username}";
					let myDom = document.querySelector('.like_people'+username+imageId);
					myDom.parentNode.removeChild(myDom);
				
				});
			}else{
				fetch("/like/image/"+imageId,{
					method:"POST"	
				}).then(function(res){
					return res.text();
				}).then(function(result){
					//하트
					let el = document.querySelector('.c__1'+imageId);
					el.innerHTML = "<img src='/image/images/49_like.png' onclick='like("+imageId+","+(count+1)+", -1)' height='30px' />";
					
					//좋아요 개수
					let el2 = document.querySelector('.like'+imageId);
					el2.innerHTML = "<b>좋아요"+(count+1)+"개</b>";
					
					//좋아요 한 사람들
					let username = "${user.username}";
					let el3 = document.querySelector(".like_people"+imageId);
					let myDom = document.createElement("a");
					myDom.className ="like_people like_people"+username+imageId;
					myDom.innerHTML = "${user.username}";
					el3.append(myDom);
				
				});
			}
		}
	</script>
	
</body>

</html>