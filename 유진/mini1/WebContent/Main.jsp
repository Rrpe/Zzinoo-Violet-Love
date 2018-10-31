<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

ul, li {
	list-style: none;
}

.my-hr1 {
	border: 4;
	height: 1px;
	background: #ccc;
}

body{
	background-image: url("image/배경1.png");
	background-size: 100%;


}
.titlecolor{color: #EAEAEA;}
.titlecolor:hover{color:#C170EA;}
.innercolor{color:#BDBDBD;}
.innercolor:hover{color:#C170EA;}
</style>


<script type="text/javascript">
function javascript(){
    //팝업창출력
    //width : 300px크기
    //height : 300px크기
    //top : 100px 위의 화면과 100px 차이해서 위치
    //left : 100px 왼쪽화면과 100px 차이해서 위치
    //툴바 X, 메뉴바 X, 스크롤바 X , 크기조절 X
    window.open('레이어팝업2.jsp','popName','width=300,height=300,top=100,left=100,toolbar=no,menubar=no,scrollbars=no,resizable=no,status=no');
    
}
</script>
</head>

<body>

	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<a class="titlecolor" href="Main.jsp"><h1>Violet Love</h1>
					</a>
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
					<a class="innercolor" href="Mypage.jsp">MyPage</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="innercolor" href="list.do">Story</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="innercolor" href="Mapmain.jsp">Memory map</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="innercolor" onclick='javascript()' value='버튼'>Random mission</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a class="innercolor" href="minigame.jsp">Mini game</a>&nbsp; &nbsp; &nbsp; &nbsp;
					
				</table>
			</nav>
		</div>
		<hr class="my-hr1">
		<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark" style="background-color:rgba(255,255,255, 0.5);">
			<h1 class="display-4"></h1>
			<div class="row mb-2">
				<div class="col-md-6">
					<div class="card flex-md-row mb-4 shadow-sm h-md-250">
						<div class="card-body d-flex flex-column align-items-start">
							<h3 class="mb-0">LOVE</h3><br><br>
								<p>
								Hatred paralyzes life; love releases it. <br>
								Hatred confuses life; love harmonizes it. <br>
								Hatred darkens life; love illumines it. <br>
								</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					
					<script language="JavaScript"> 
							var i = 0;
							var path = new Array();
							// LIST OF IMAGES 
							path[0] = "image/고양이커플.png";
							path[1] = "image/커플사진1.png";
							path[2] = "image/커플사진3.png";
							path[3] = "image/커플사진4.png";
							function swapImage() {
								document.slide.src = path[i];
								if (i < path.length - 1)
									i++;
								else
									i = 0;
								setTimeout("swapImage()", 2000);
							}
							window.onload = swapImage;
						</script>
						<img height="75%" name="slide" src="image/capture(2).png" width="90%" />
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- <main div다 들어감> -->
	<main role="main" class="container">
	<center>
		<div class="row">
			<div class="col-md-8 blog-main">
				<div class="blog-post">
					<div style="overflow-y: scroll; height:500px;">
						<img src="image/유진진자라.png" height="300" width="300"><br>
						<img src="image/준수오빠.png" height="300" width="300"><br>
						<img src="image/보라언니.png" height="300" width="300"><br>
						<img src="image/홍일오빠.png" height="300" width="300"><br>
					</div>
				</div>
			</div>
		</div>
		</center>
	</main>
	<footer class="my-5 pt-5 text-muted text-center text-small" style="margin-top: 100px">
	<br>
		<p class="mb-1">&copy; Zzinu team</p>
		<ul class="list-inline">
			<li class="list-inline-item"><a href="#">Privacy</a></li>
			<li class="list-inline-item"><a href="#">Terms</a></li>
			<li class="list-inline-item"><a href="#">Support</a></li>
		</ul>
	</footer>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"crossorigin="anonymous"></script>
	<script>window.jQuery|| document.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')</script>
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