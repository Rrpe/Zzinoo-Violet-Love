<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">
<title>Main</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
<link href="blog.css" rel="stylesheet">

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

#slide {
	height: 300px;
	position: relative;
	overflow: hidden;
}

#slide ul {
	width: 400%;
	height: 100%;
	transition: 1s;
}

#slide ul:after {
	content: "";
	display: block;
	clear: both;
}

#slide li {
	float: left;
	width: 25%;
	height: 100%;
}

#slide li:nth-child(1) {
	background-image: url("image/noname01.bmp")
}

#slide li:nth-child(2) {
	background: #ffa;
}

#slide li:nth-child(3) {
	background: #faF;
}

#slide li:nth-child(4) {
	background: #aaf;
}

#slide input {
	display: none;
}

#slide label {
	display: inline-block;
	vertical-align: middle;
	width: 10px;
	height: 10px;
	border: 2px solid #666;
	background: #fff;
	transition: 0.3s;
	border-radius: 50%;
	cursor: pointer;
}

#slide .pos {
	text-align: center;
	position: absolute;
	bottom: 10px;
	left: 0;
	width: 100%;
	text-align: center;
}

#pos1:checked ~ul {
	margin-left: 0%;
}

#pos2:checked ~ul {
	margin-left: -100%;
}

#pos3:checked ~ul {
	margin-left: -200%;
}

#pos4:checked ~ul {
	margin-left: -300%;
}

#pos1:checked ~.pos>label:nth-child(1) {
	background: #666;
}

#pos2:checked ~.pos>label:nth-child(2) {
	background: #666;
}

#pos3:checked ~.pos>label:nth-child(3) {
	background: #666;
}

#pos4:checked ~.pos>label:nth-child(4) {
	background: #666;
}

.my-hr1 {
	border: 4;
	height: 1px;
	background: #ccc;
}
</style>


<script type="text/javascript">
	function page_href() {

		location.href = "Login.jsp";/////////////////// Search

	}
</script>
</head>

<body>
	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<a class="blog-header-logo text-dark" href="Main.jsp"><h1>Violet Love</h1>
					</a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<a class="text-muted" href="#">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3">
							<circle cx="10.5" cy="10.5" r="7.5"></circle>
							<line x1="21" y1="21" x2="15.8" y2="15.8"></line>
						</svg>
					</a>
					<a class="btn btn-sm btn-outline-secondary" onclick="page_href()">Search</a>
					<!--/////// Search -->
					<a class="btn btn-sm btn-outline-secondary" href="Login.jsp">login</a>&nbsp;
					<a class="btn btn-sm btn-outline-secondary" href="Signup.jsp">signup</a>
				</div>
			</div>
		</header>
		<hr class="my-hr1">
		<div class="nav-scroller py-1 mb-2" align="center">
			<nav class="nav d-flex justify-content-between">
				<table>
					<a class="p-2 text-muted" href="Mypage.jsp">MyPage</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="list.do">자게</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="Mapmain.jsp">memory map</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="#">wish list</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="#">today mission</a>&nbsp; &nbsp; &nbsp; &nbsp;
				</table>
			</nav>
		</div>
		<hr class="my-hr1">
		<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark" style="background-color: #D2D2FF">
			<h1 class="display-4"></h1>
			<div class="row mb-2">
				<div class="col-md-6">
					<div class="card flex-md-row mb-4 shadow-sm h-md-250">
						<div class="card-body d-flex flex-column align-items-start">
							<h3 class="mb-0"><a class="text-dark" href="#">Closer</a></h3>
								<p>So baby pull me closer in the backseat of your Rover
									That I know you can't afford Bite that tattoo on your
									shoulder Pull the sheets right off the corner Of the mattress
									that you stole From your roommate back in Boulder We ain't
									ever getting older
								</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card flex-md-row mb-4 shadow-sm h-md-250">
						<div id="slide">
							<input type="radio" name="pos" id="pos1" checked>
							<input type="radio" name="pos" id="pos2">
							<input type="radio" name="pos" id="pos3">
							<input type="radio" name="pos" id="pos4">
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
							<p class="pos">
								<label for="pos1"></label> <label for="pos2"></label>
								<label for="pos3"></label> <label for="pos4"></label>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <main div다 들어감> -->
	<main role="main" class="container">
		<div class="row">
			<div class="col-md-8 blog-main">
				<div class="blog-post">
					<div style="overflow: auto;">
						<form>
							<table>
								<tr>
									<td><img  src="/mini1/image/1238.png"/></td>					
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
			<aside class="col-md-4 blog-sidebar">
				<div class="p-3 mb-3 bg-light rounded">
					<h4 class="font-italic">D-day</h4>
					<p>400일 D-26</p>
					<p>500일 D-126</p>
					<p>600일 D-226</p>
				</div>
				<div class="p-3">
					<h4 class="font-italic">Buket List</h4>
					<ol class="list-unstyled mb-0">
						<li>소라언니 놀리기</li>
						<li>홍일이 오빠 놀리기</li>
						<li>준수오빠 놀리기</li>
						<li>롤하고싶당</li>
						<li>비누랑 산책가기</li>
						<li>살빠지면 좋겠다</li>
						<li>자바스크립트 마스터</li>
					</ol>
				</div>
				<div class="p-3">
					<h4 class="font-italic">Elsewhere</h4>
					<ol class="list-unstyled">
						<li><a href="#">GitHub</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">Facebook</a></li>
					</ol>
				</div>
			</aside>
		</div>
	</main>
	<footer class="my-5 pt-5 text-muted text-center text-small" style="margin-top: 100px">
	<br>
		<p class="mb-1">&copy; 홍일 소라 유진 준수</p>
		<ul class="list-inline">
			<li class="list-inline-item"><a href="#">Privacy</a></li>
			<li class="list-inline-item"><a href="#">Terms</a></li>
			<li class="list-inline-item"><a href="#">Support</a></li>
		</ul>
	</footer>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"crossorigin="anonymous"></script>
	<script>window.jQuery|| document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
	<script src="js/vendor/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vendor/holder.min.js"></script>
	<script>Holder.addTheme('thumb', {
			bg : '#55595c',
			fg : '#eceeef',
			text : 'Thumbnail'
		});
	</script>
</body>
</html>