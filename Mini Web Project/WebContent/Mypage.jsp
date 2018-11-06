<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>Violet Love Mypage</title>

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
	font-size: 150%;
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

.menucolor {
	background-color: rgba(30, 50, 105, 0.8);
}
</style>

</head>

<body>

	<div class="container">
		<header class="blog-header py-3">
         <div
            class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4 text-center" align="center">
               <a class="titlecolor" href="Mainlist.do">
               <h1>Violet Love</h1> </a>
            </div>
            
            <div class="col-4 d-flex justify-content-end align-items-center">
               <a class="text-muted" href="#"> <svg
                     xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                     viewBox="0 0 24 24" fill="none" stroke="currentColor"
                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                     class="mx-3">
                     <circle cx="10.5" cy="10.5" r="7.5"></circle>
                     <line x1="21" y1="21" x2="15.8" y2="15.8"></line>
                  </svg>
               </a> 
             <%  
            String id = (String) session.getAttribute("idSession");
            
            if(id == null){
               System.out.println("세션값 없음");
               %>
                    <a class="titlecolor" href="Login.jsp">login</a>&nbsp;
                    <a class="titlecolor" href="Signup.jsp">signup</a>
               <%
            } else {
               System.out.println("세션값 있음");
               %>
               <a class="titlecolor" href="Login.jsp">logout</a>
               <%
            }
               %>
            </div>
         </div>
         
      </header>

		<hr class="my-hr1">

		<header id="headdddd"> <nav class="menucolor">
		<button class="aaa" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span><img src="image/하트트.png"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="innercolor" href="Mypage.sign">MyPage</a>&nbsp;
					&nbsp; &nbsp; &nbsp;</li>
				<li class="nav-item"><a class="innercolor" href="list.do">Story</a>&nbsp;&nbsp;
					&nbsp; &nbsp;</li>
				<li class="nav-item"><a class="innercolor" href="Mapmain.jsp">JMT
						map</a>&nbsp; &nbsp; &nbsp; &nbsp;</li>
				<li class="nav-item"><a class="innercolor" href="Utube.jsp">Play</a>&nbsp;
					<br></li>
			</ul>
		</div>
		</nav> </header>

		<hr class="my-hr1">
		<div class="container"></div>
		<h3 align="center" class="mb-3"
			style="color: #ffffff; font-weight: 700;">회 원 정 보</h3>

		<form action="usermodify.sign" method="post">
				<div class="row">
					<div class="row">
						<label for="userID" style="color: #ffffff; font-weight: 500;">아이디</label>
						<input type="text" class="form-control" name="userID"
							placeholder="ID" value="${Mypage_view.userID}" readonly required
							autofocus> <br> <label for=password
							style="color: #ffffff; font-weight: 500;">비밀번호</label> <input
							type="password" class="form-control" name="userPWD"
							placeholder="password" value="${Mypage_view.userPWD}" required> <br>
						<label for="firstName" style="color: #ffffff; font-weight: 500;">이름</label>
						<input type="text" class="form-control" name="userNAME"
							placeholder="이름" value="${Mypage_view.userNAME}" required> <br>
						<label for="username" style="color: #ffffff; font-weight: 500;">닉네임</label>
						<input type="text" class="form-control" name="userNICNAME"
							placeholder="닉네임" value="${Mypage_view.userNICNAME}" required> <br>
						<label for="inputEmail" style="color: #ffffff; font-weight: 500;">이메일</label>
						<input type="email" class="form-control" name="userEMAIL"
							placeholder="아이디@도메인.com" value="${Mypage_view.userEMAIL}" required>
						<br> <label for="inputKey"
							style="color: #ffffff; font-weight: 500;">유저 KEY</label> <input
							type="text" class="form-control" name="userKEY"
							style="margin-bottom: 15px" value="${Mypage_view.userKEY}" required>
						<br>

						<div class="buttonmode">
							<input type="submit" class="btn btn-lg btn-primary btn-block"
								value="수정완료" style="background-color: rgba(50, 50, 255, 0.5);">
						</div>
					</div>
				</div>
		</form>
	</div>

	<footer class="my-5 pt-5 text-muted text-center text-small"
		style="margin-top: 100px"> <br>
	<p class="mb-1" style="color: #ffffff; font-weight: 700;">&copy; 홍일
		소라 유진 준수</p>
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