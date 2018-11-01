<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>Free</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
	rel="stylesheet">
<link href="blog.css" rel="stylesheet">

<style type="text/css">
.my-hr1 {
	border: 4;
	height: 1px;
	background: #ccc;
}
body {
	background: url("image/배경1.png") no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	margin-top: 50px;
}
/* 제목이랑 로그인 회원가입 */
.titlecolor {
	color: #EAEAEA;
	font-size: 100%
}

.titlecolor:hover {
	color: #C170EA;
	text-decoration: none !important;
}
/* 메뉴바  */
.innercolor {
	color: #BDBDBD;
	font-size: 120%;
}

.innercolor:hover {
	color: #C170EA;
}
/* 버튼 투명화시키고 이미지 넣음 */
.aaa {
	background-color: transparent !important;
	background-image: none !important;
	border-color: transparent;
	border: none;
	color: #FFFFFF;
}
/* 메뉴바 위치 */
#headdddd ul {
	margin-left: 30%;
	list-style: none;
	margin-bottom: 20px;
}
.row {
	margin-right: 15%;
	margin-left: 15%;
}
.menucolor{
   background-color:rgba(30, 50, 105, 0.8);
}
</style>

</head>

<body>
	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<br><br> 
					<a class="titlecolor" href="Main.jsp"><p style="font-size: 300%">Violet Love</p></a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					&nbsp; &nbsp;&nbsp;&nbsp; 
					<a class="titlecolor" href="Login.jsp">login</a>
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a class="titlecolor" href="Signup.jsp">signup</a>
				</div>
			</div>
		</header>
		<hr class="my-hr1">
	
		<header id="headdddd">
			<nav class="menucolor">
				<button class="aaa" type="button" data-toggle="collapse"data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span><img src="image/하트트.png"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="innercolor" href="Mypage.jsp">MyPage</a>&nbsp; &nbsp; &nbsp; &nbsp;</li>
						<li class="nav-item"><a class="innercolor" href="list.do">Story</a>&nbsp;&nbsp; &nbsp; &nbsp;</li>
						<li class="nav-item"><a class="innercolor" href="Mapmain.jsp">Memory map</a>&nbsp; &nbsp; &nbsp; &nbsp;</li>
						<li class="nav-item"><a class="innercolor" href="minigame.jsp">Mini game</a>&nbsp; <br></li>
					</ul>
				</div>
			</nav>
		</header>
		
		<hr class="my-hr1" >
		<h3 align="center" class="mb-3" style="color: #ffffff; font-weight: 700;">회 원 정 보</h3>
		<div class="row">
			<div class="row">
				<label for="userID" style="color: #ffffff; font-weight: 500;">아이디</label> <input type="text" class="form-control" name="userID" placeholder="ID" required>
				<br>
				<label for=password style="color: #ffffff; font-weight: 500;">비밀번호</label><input type="password" class="form-control" name="userPWD" placeholder="password" required>
				<br>
				<label for="firstName" style="color: #ffffff; font-weight: 500;">이름</label><input type="text" class="form-control" name="userNAME" placeholder="이름" required>
				<br>
				<label for="username" style="color: #ffffff; font-weight: 500;">닉네임</label> <input type="text" class="form-control" name="userNICNAME" placeholder="닉네임" required>
				<br>
				<label for="inputEmail" style="color: #ffffff; font-weight: 500;">이메일</label> <input type="email" class="form-control" name="userEMAIL" placeholder="아이디@도메인.com" required autofocus>
				<br>
				
				<div class="buttonmode">
					<input type="button" class="btn btn-lg btn-primary btn-block" onclick="modify()" value="수정완료" style="background-color: rgba(50, 50, 255, 0.5);">
				</div>
			</div>
		</div>
	</div>
	
	<footer class="my-5 pt-5 text-muted text-center text-small" style="margin-top: 100px">
	<br>
		<p class="mb-1" style="color: #ffffff; font-weight: 700;">&copy; 홍일 소라 유진 준수</p>
		<ul class="list-inline" style="font-weight: 700;">
			<li class="list-inline-item"><a href="#">Privacy</a></li>
			<li class="list-inline-item"><a href="#">Terms</a></li>
			<li class="list-inline-item"><a href="#">Support</a></li>
		</ul>
	</footer>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="js/vendor/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vendor/holder.min.js"></script>
	<script>
		Holder.addTheme('thumb', {
			bg : '#55595c',
			fg : '#eceeef',
			text : 'Thumbnail'
		});
	</script>
</body>
</html>