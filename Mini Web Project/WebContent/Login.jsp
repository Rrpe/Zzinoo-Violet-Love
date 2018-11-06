<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="러브다이어리">
<meta name="author" content="찌누">
<!-- 새 탭 이미지 아이콘 -->

<title>Violet Love Login</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

<style>
body {
	background: url("image/배경1.png") no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	margin-top: 50px;
}

#login-form>div {
	margin: 15px 0;
}

.row {
	margin-right: 15%;
	margin-left: 15%;
}
/* 제목이랑 로그인 회원가입 */
.titlecolor {
   color: #EAEAEA;
   font-size: 300%
}

.titlecolor:hover {
   color: #C170EA;
   text-decoration: none !important;
}
</style>

<script type="text/javascript">
	function page_href() {

		location.href = "Signup.jsp";

	}
</script>
</head>

<body class="bg-light">
	<div class="container">
			<!--     <img class="mb-4" src="image/diary.png" alt="" width="128" height="128">  -->
			<!-- 홈페이지 레이아웃 이미지  -->
			<div class="py-5 text-center" style="color: #ffffff; font-weight: 700;">
				<a href="Mainlist.do"><h2 class="titlecolor">Violet Love</h2></a><br>
				<p class="lead">Violet Love에 오신걸 환영합니다. Violet Love의 뜻은 뒤질때까지 사랑하라는 뜻입니다 ༼ つ ◕_◕ ༽つ </p>
			</div>
			
			<hr>
			
			<!-- 큰 메세지 부분 -->
			<h1 align="center" class="h3 mb-3 font-weight-normal" style="color: #ffffff; font-weight: 700;">Please Sign In</h1>
			<%session.invalidate(); %>
			<form class="form-signin" action="main.sign" method="post">
				<div class="row"><!-- 로그인 아이디 부분 -->
					<div class="row">
						<label for="userID" class="sr-only">아이디</label>
						<input type="text" class="form-control" name="userID" placeholder="ID" required>
						<br>
						<!-- 로그인 패스워드 부분 -->
						<label for="inputPassword" class="sr-only">Password</label>
						<input type="password" name="userPWD" class="form-control" placeholder="Password" required>
						<br>
						<hr class="mb-4">
			<!-- <div class="checkbox mb-3">
				Remember me 체크박스
				<label style="color: #ffffff;"> <input type="checkbox" value="remember-me"> Remember me</label>
			</div> -->
				
					<div class="buttonmode">
						<button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color: rgba(50, 50, 255, 0.5);">로그인</button>
						<button class="btn btn-lg btn-primary btn-block" type="button" onclick="page_href()" style="background-color: rgba(50, 50, 255, 0.5);">회원가입</button>
					</div>
				</div>
			</div>
			<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
		</form>
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
		window.jQuery|| document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="js/vendor/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vendor/holder.min.js"></script>
	
</body>
</html>