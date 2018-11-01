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
	font-family: 'Rix���ڿ��� 3D';
}
p {
	font-family: 'Rix�����Ǹ�ȭ B';
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

/* �����̶� �α��� ȸ������ */

/* �޴���  */
.innercolor {
	color: #BDBDBD;
	font-size: 120%;
}

.innercolor:hover {
	color: #C170EA;
}
/* ��ư ����ȭ��Ű�� �̹��� ���� */
.aaa {
	background-color: transparent !important;
	background-image: none !important;
	border-color: transparent;
	border: none;
	color: #FFFFFF;
}
/* �޴��� ��ġ */
#headdddd ul {
	margin-left: 30%;
	list-style: none;
	margin-bottom: 20px;
}
</style>
<script language="javascript">
//��ưŬ���� javascript ȣ���մϴ�.
function javascript(){
 
    //�˾�â���
    //width : 300pxũ��
    //height : 300pxũ��
    //top : 100px ���� ȭ��� 100px �����ؼ� ��ġ
    //left : 100px ����ȭ��� 100px �����ؼ� ��ġ
    //���� X, �޴��� X, ��ũ�ѹ� X , ũ������ X
    window.open('���̾��˾�2.jsp','popName',
                'width=300,height=300,top=100,left=100,toolbar=no,menubar=no,scrollbars=no,resizable=no,status=no');
}
</script>

</head>

<body>
	<div class="container">
		<header class="blog-header py-3">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 text-center" align="center">
					<br><br> 
					<a class="titlecolor" href="Main.jsp"><p style="font-size: 300%">Violet Love</p></a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					&nbsp; &nbsp;&nbsp;&nbsp; 
					<a class="titlecolor" href="Login.jsp">login</a>
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a class="titlecolor" href="Signup.jsp">signup</a>
				</div>
			</div>
		</header>
		<hr class="my-hr1">
	
		<header id="headdddd">
			<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
				<button class="aaa" type="button" data-toggle="collapse"data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span><img src="image/��ƮƮ.png"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="innercolor" href="Mypage.jsp">MyPage</a>&nbsp; &nbsp; &nbsp; &nbsp;</li>
						<li class="nav-item"><a class="innercolor" href="list.do">Story</a>&nbsp;&nbsp; &nbsp; &nbsp;</li>
						<li class="nav-item"><a class="innercolor" href="Mapmain.jsp">JMT map</a>&nbsp; &nbsp; &nbsp; &nbsp;</li>
						<li class="nav-item"><a class="innercolor" href="minigame.jsp">Mini game</a>&nbsp; <br></li>
					</ul>
				</div>
			</nav>
		</header>
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
				<!--�޴�-->
				<td id="menu" width="180" height="600"><img width="180"
					height="600" src="image/menu.png" usemap="#imap"> <map
						name="imap">
						<!--�̹�����-->
						<area onfocus="this.blur();" shape="rect" coords="0,0,180,100"
							href="WebGame/menu.jsp" target="myframe" alt="menu" />
						<!--ù��°�޴�-->
						<area onfocus="this.blur();" shape="rect" coords="0,100,180,200"
							href="WebGame/yujin.jsp" target="myframe" alt="yujin" />
						<!--�ι�°�޴�-->
						<area onfocus="this.blur();" shape="rect" coords="0,200,180,300"
							href="WebGame/euisuk.jsp" target="myframe" alt="euisuk" />
						<!--����°�޴�-->
						<area onfocus="this.blur();" shape="rect" coords="0,300,180,400"
							href="WebGame/sora.jsp" target="myframe" alt="sora" />
						<!--�׹�°�޴�-->
						<area onfocus="this.blur();" shape="rect" coords="0,400,180,500"
							href= "WebGame/boyeon.jsp"target="myframe" alt="boyeon" />
						<!--�ټ���°�޴�-->
						<area onfocus="this.blur();" shape="rect" coords="0,500,180,600"
							href="WebGame/game.jsp" target="myframe" alt="game" />
						<!--������°�޴�-->
					</map></td>

				<!--����-->
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
		<p class="mb-1">&copy; ȫ�� �Ҷ� ���� �ؼ�</p>
		<ul class="list-inline">
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