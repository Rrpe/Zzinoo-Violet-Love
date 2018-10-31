<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
<head>
<title>boyeon</title>
<meta charset="utf-8">
<meta name="vi ewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
<style type="text/css">
#page {
	width: 595px;
	height: 560px;
	margin: 20px 15px 20px 15px;
	background-color: #D8F2FF;
}

section {
	color: #004769;
	margin: 10px 5px 0px 10px;
}

#myCanvas {
	display: none;
	background: #FFFFFF;
	border: #909090 1px solid;
}

#SplashScreen {
	width: 500px;
	height: 400px;
	background-image: url("../image/startmole.png");
	background-repeat: none;
	border: #909090 1px solid;
}

#btnStart {
	position: absolute;
	top: 220px;
	left: 186px;
	width: 150px;
	height: 41px;
	background-image: url("../image/play.png");
	background-repeat: none;
}

#btnStart:hover {
	opacity: 0.8;
	cursor: pointer;
}

.myAudio {
	display: none;
}

.sound {
	display: none;
	position: absolute;
	top: 20px;
	left: 30px;
	width: 30px;
	height: 25px;
	cursor: pointer;
	z-index: 10;
}

.sound-on {
	background-image: url('../image/soundOn.png');
	background-repeat: no-repeat;
}

.sound-off {
	background-image: url('../image/soundOff.png');
	background-repeat: no-repeat;
}
</style>
</head>


<body>
	<div id="page">
		<section>
			<div id="SplashScreen">
				<span id="mainImage"> </span> <span id="btnStart"> </span>
			</div>
			<div class="sound sound-on"></div>
			<audio class="myAudio" loop>
				<source src="../sounds/b_bg.mp3" type="audio/mpeg">
			</audio>
			<canvas id="myCanvas" width="500" height="400">HTML5 CANVAS를 지원하지 않습니다.</canvas>
			<script src="../js/b_main.js"></script>
		</section>
	</div>

</body>

</html>