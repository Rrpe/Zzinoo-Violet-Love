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

<title>MiniGame</title>

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
table, tr, td {
	/*border:1px solid black;*/
	border-collapse: collapse;
	padding: 0;
}

#menu, #content {
	/*background-color: #EEEEEE;*/
	
}
 #title_img {
            border: 6px solid;
            border-color: rgba(255,255,255,0.4);
            margin:13px 12px 13px 12px;
        }
body {
	background-image: url('image/b.png');
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	font-family: 'Rix전자오락 3D';
}
p {
	font-family: 'Rix오늘의만화 B';
}

#container {
	margin: 0px;
	text-align: center;
}

#page {
	width: 595px;
	height: 560px;
	margin: 20px 15px 20px 15px;
	background-color: #FFE8E8;
}

</style>
<script language="javascript">
//버튼클릭시 javascript 호출합니다.
function javascript(){
 
    //팝업창출력
    //width : 300px크기
    //height : 300px크기
    //top : 100px 위의 화면과 100px 차이해서 위치
    //left : 100px 왼쪽화면과 100px 차이해서 위치
    //툴바 X, 메뉴바 X, 스크롤바 X , 크기조절 X
    window.open('레이어팝업2.jsp','popName',
                'width=300,height=300,top=100,left=100,toolbar=no,menubar=no,scrollbars=no,resizable=no,status=no');
}
</script>

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
				</table>
			</nav>
		</div>
		<hr class="my-hr1">
		<div style="margin-bottom: 100px" class="container"></div>
		<div class="table-responsive">
		<table align="center" class="table">
		<form action="write.do" method="post">
			<table align="center">
        <colgroup>
            <col width="180">
            <col width="640">
        </colgroup>
			<tr>
				<!--메뉴-->
				<td id="menu" width="180" height="600"><img width="180"
					height="600" src="image/menu.png" usemap="#imap"> <map
						name="imap">
						<!--이미지맵-->
						<area onfocus="this.blur();" shape="rect" coords="0,0,180,100"
							href="WebGame/menu.jsp" target="myframe" alt="menu" />
						<!--첫번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,100,180,200"
							href="WebGame/yujin.jsp" target="myframe" alt="yujin" />
						<!--두번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,200,180,300"
							href="WebGame/euisuk.jsp" target="myframe" alt="euisuk" />
						<!--세번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,300,180,400"
							href="WebGame/sora.jsp" target="myframe" alt="sora" />
						<!--네번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,400,180,500"
							href= "WebGame/boyeon.jsp"target="myframe" alt="boyeon" />
						<!--다섯번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,500,180,600"
							href="WebGame/game.jsp" target="myframe" alt="game" />
						<!--여섯번째메뉴-->
					</map></td>

				<!--내용-->
				<td id="content"><iframe width="640" height="600"
						scrolling="no" frameborder=0 name="myframe" src="WebGame/menu.jsp"></iframe></td>
				</tr>
		</tbody>
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