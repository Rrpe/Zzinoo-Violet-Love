<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- width=device-width:브라우저 너비를 장치 너비에 맞추어 표시함 -->
<!-- shrink-to-fit=no: ios 사파리 기준의  -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="러브다이어리">
<meta name="author" content="찌누">
<!-- 상단 아이콘 -->
<link rel="icon" href="image/book.png">

<title>Violet Love Signup</title>

<!-- 부트트랩 연결 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>

body {
	background: url("image/배경1.png") no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	margin-top: 50px;
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

	location.href = "Login.jsp";

}
</script>
</head>

<body class="bg-light">
	<div class="container">
	
		<div class="py-5 text-center" style="color: #ffffff; font-weight: 700;">
			<a href="Mainlist.do"><h2 class="titlecolor">Violet Love</h2></a><br>
			<p class="lead">Violet Love에 오신걸 환영합니다. Violet Love의 뜻은 뒤질때까지 사랑하라는 뜻입니다 ༼ つ ◕_◕ ༽つ </p>
		</div>
		
		<hr>
		<h3 align="center" class="mb-3" style="color: #ffffff; font-weight: 700;">회원가입 정보</h3>
		<form class="form-signin" action="sign.sign" method="post">
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
					<hr class="mb-4">
				
					<div class="buttonmode">
						<button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color: rgba(50, 50, 255, 0.5);">회원가입 완료</button>
						<button class="btn btn-lg btn-primary btn-block" type="button" onclick="page_href()" style="background-color: rgba(50, 50, 255, 0.5);">로그인 창으로</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<footer class="my-5 pt-5 text-muted text-center text-small">
	<br>
		<p class="mb-1" style="color: #ffffff; font-weight: 700;">&copy; 홍일 소라 유진 준수</p>
		<ul class="list-inline" style="font-weight: 700;">
			<li class="list-inline-item"><a href="#">Privacy</a></li>
			<li class="list-inline-item"><a href="#">Terms</a></li>
			<li class="list-inline-item"><a href="#">Support</a></li>
		</ul>
	</footer>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery|| document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="js/vendor/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vendor/holder.min.js"></script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
	function() {
		'use strict';
		window.addEventListener('load',function() {
		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document.getElementsByClassName('needs-validation');
		// Loop over them and prevent submission
		var validation = Array.prototype.filter.call(forms,function(form) {
		form.addEventListener('submit',function(event) {
		if (form.checkValidity() === false) {event.preventDefault();
		event.stopPropagation();}
		form.classList.add('was-validated');},false);});}, false);})();
	</script>
</body>
</html>
