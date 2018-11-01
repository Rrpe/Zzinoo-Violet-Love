
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
	background-image: url("image/배경1.png");
	background-size: 100%;
}

.titlecolor {
	color: #EAEAEA;
}

.titlecolor:hover {
	color: #C170EA;
	text-decoration: none !important;
}

.innercolor {
	color: #BDBDBD;
}

.innercolor:hover {
	color: #C170EA;
	text-decoration: none !important;
}
</style>
</head>
<body>
	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<a class="titlecolor" href="Main.jsp"><h1>Violet Love</h1> </a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">

					<a class="titlecolor" href="Login.jsp">login</a>&nbsp;&nbsp;&nbsp;
					<a class="titlecolor" href="Signup.jsp">signup</a>
				</div>
			</div>
		</header>
		<hr class="my-hr1">
		<div class="nav-scroller py-1 mb-2" align="center">
			<nav class="nav d-flex justify-content-between">
				<table>
					<a class="innercolor" href="Mypage.jsp">MyPage</a>&nbsp; &nbsp;
					&nbsp; &nbsp;
					<a class="innercolor" href="list.do">Story</a>&nbsp; &nbsp; &nbsp;
					&nbsp;
					<a class="innercolor" href="Mapmain.jsp">Memory map</a>&nbsp;
					&nbsp; &nbsp; &nbsp;
					<a class="innercolor" href="minigame.jsp">Mini game</a>&nbsp;
					&nbsp; &nbsp; &nbsp;

				</table>
			</nav>
		</div>
		<hr class="my-hr1">
		<div style="margin-bottom: 100px" class="container"></div>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>사진</th>
						<th>이름</th>
						<th>제목</th>
						<th>날짜</th>
						<th>히트</th>
					</tr>
					<c:forEach items="${list}" var="dto">
					<!-- <img src="C:\Users\lg\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\mini1\upload
					\${dto.Namee}"/> -->
					<tr>
					
					<td><img src="/mini1/image/${dto.namee}"/></td>
					
						<td>${dto.bId}</td>
						<td>${dto.bName}</td>
						<td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
							<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td>
						<td>${dto.bDate}</td>
						<td>${dto.bHit}</td>					
					</tr>
					</c:forEach>
					<tr>
						<td colspan="5"><a href="write_view.do">글작성</a></td>
					</tr>
				</thead>
			</table>
		</div>
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