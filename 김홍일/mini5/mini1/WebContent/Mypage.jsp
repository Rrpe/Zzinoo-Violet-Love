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
</style>

</head>

<body>
<%

	String id = (String)session.getAttribute("idSession");
	
	if (id == null){
		System.out.println("세션값 없음");
		response.sendRedirect("Login.jsp");
	}
%>

	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<a class="blog-header-logo text-dark" href="Main.jsp"><h1>Violet Love</h2></a>
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
					<a class="btn btn-sm btn-outline-secondary" href="Main.jsp">logout</a>
				</div>
			</div>
		</header>
		<hr class="my-hr1">
		<div class="nav-scroller py-1 mb-2" align="center">
			<nav class="nav d-flex justify-content-between">
				<table>
					<a class="p-2 text-muted" href="Mypage.sign">MyPage</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="list.do">자게</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="Mapmain.jsp">memory map</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="#">wish list</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="#">today mission</a>&nbsp; &nbsp; &nbsp; &nbsp;
				</table>
			</nav>
		</div>
		<hr class="my-hr1">
		<div style="margin-bottom: 100px" class="container"></div>
		<div class="table-responsive">
			<table align="center" class="table">
			<form action="usermodify.sign" method="post" >
			<c:forEach items="${list}" var="dto">
		<tr>
			<td><h3><B>회원정보</B></h3></td>
		</tr>
		<tr>
									
			<td>아이디</td>
			<td><input type="text" name="userID" style="margin-bottom: 15px" value="${dto.userID}" readonly/>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userPWD"
				style="margin-bottom: 15px" value="${dto.userPWD}"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="userNAME"
				style="margin-bottom: 15px" value="${dto.userNAME}" /></td>
		</tr>
				<tr>
			<td>닉네임</td>
			<td><input type="text" name="userNICNAME"
				style="margin-bottom: 15px" value="${dto.userNICNAME}"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="userEMAIL" style="margin-bottom: 15px" value="${dto.userEMAIL}"/></td>
		</tr>
		<tr>
			<td>유저 KEY</td>
			<td><input type="text" name="userKEY" style="margin-bottom: 15px" value="${dto.userKEY}"/></td>
		</tr>
		<tr>
			<td style="text-align: center" colspan="2"><input type="submit" value="수정완료"></td>
		</tr>
		</c:forEach>
		</form>
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