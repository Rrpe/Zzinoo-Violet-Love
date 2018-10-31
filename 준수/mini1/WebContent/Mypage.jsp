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
	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<a class="blog-header-logo text-dark" href="Main.jsp"><h1>Violet Love</h2></a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
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
					<a class="p-2 text-muted" href="list.do">Story</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="Mapmain.jsp">Memory map</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" href="minigame.jsp">Mini game</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="p-2 text-muted" onclick='javascript()' value='버튼'>Random mission</a>&nbsp; &nbsp; &nbsp; &nbsp;
				</table>
			</nav>
		</div>
		<hr class="my-hr1">
		<div style="margin-bottom: 100px" class="container"></div>
		<div class="table-responsive">
			<table align="center" class="table">
		<tr>
			<td><h3><B>회원정보</B></h3></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" style="margin-bottom: 15px"/>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"
				style="margin-bottom: 15px" /></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="password"
				style="margin-bottom: 15px" /></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input type="text" name="nickName"
				style="margin-bottom: 15px" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" style="margin-bottom: 15px"/>
				@ <select>
					<option value="naver.com">naver.com</option>
					<option value="daum.com">daum.com</option>
					<option value="nate.com">nate.com</option>
					<option value="hotmail.com">hotmail.com</option>
					<option value="yahoo.com">yahoo.com</option>
			</select></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="address"
				style="margin-bottom: 15px" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><select>
					<option value="010">010</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
			</select>- <input type="text" name="phoneNumber" />- <input type="text"
				name="phoneNumber" style="margin-bottom: 15px" /></td>
		</tr>

		<tr>
			<td style="text-align: center" colspan="2"><input type="button"
				onclick="modify()" value="수정완료"></td>
		</tr>
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