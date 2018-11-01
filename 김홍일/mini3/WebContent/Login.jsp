<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="image/diary.png">
<!-- 새 탭 이미지 아이콘 -->

<title>Login</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Style -->
<link href="css/style.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

<style>
.text-center {
	background: url(image/akfajflqorud.jpg) no-repeat center center fixed;
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
	margin-left: 30%;
	margin-right: 30%;
}

.buttonmode {
	width: 20%;
	margin-left: 40%;
	margin-right: 40%;
}

.allmode {
	
}
</style>
<script type="text/javascript">
	function page_href() {

		location.href = "Signup.jsp";

	}
</script>
</head>
<body class="text-center">

	<div class="container">
			<!--     <img class="mb-4" src="image/diary.png" alt="" width="128" height="128">  -->
			<!-- 홈페이지 레이아웃 이미지  -->
			<div class="py-5 text-center" style="color: #ffffff; font-weight: 700;">
				<h2>Violet Love</h2>
				<p class="lead">Violet Love에 오신걸 환영합니다. Violet Love의 뜻은 뒤질때까지 사랑하라는 뜻입니다 ༼ つ ◕_◕ ༽つ </p>
			</div>
			<hr>
			
			<%session.invalidate(); %>
			<form class="form-signin" action="main.sign" method="post">
			<div class="row">
				<!-- 큰 메세지 부분 -->
				<h1 class="h3 mb-3 font-weight-normal" style="color: #ffffff; font-weight: 700;">Please Sign In</h1>
				<!-- 로그인 아이디 부분 -->
				<label for="userID" class="sr-only">아이디</label>
				<input type="text" class="form-control" name="userID" placeholder="ID" required>
				<br>
				<!-- 로그인 패스워드 부분 -->
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" name="userPWD" class="form-control" placeholder="Password" required>
				<br>
			</div>
			<div class="checkbox mb-3">
				<!-- Remember me 체크박스 -->
				<label style="color: #ffffff;"> <input type="checkbox" value="remember-me"> Remember me</label>
			</div>
			<div class="buttonmode">
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
				<button class="btn btn-lg btn-primary btn-block" type="button" onclick="page_href()">Sign Up</button>
			</div>
			<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
		</form>
	</div>
	<footer class="my-5 pt-5 text-muted text-center text-small" style="margin-top: 100px">
		<br>
		<p class="mb-1">&copy; 홍일 소라 유진 준수</p>
		<ul class="list-inline">
			<li class="list-inline-item"><a href="#">Privacy</a></li>
			<li class="list-inline-item"><a href="#">Terms</a></li>
			<li class="list-inline-item"><a href="#">Support</a></li>
		</ul>
	</footer>
</body>
</html>