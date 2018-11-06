<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko" style="background-color: #FFB48D;">
<head>
<title>yujin</title>
<meta charset="utf-8">
<link href="style.css" type="text/css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>

<style type="text/css">
#myCanvas {
	background: #FFFFFF;
	border: #909090 1px solid;
}

.sound {
	position: absolute;
	top: 20px;
	left: 570px;
	width: 30px;
	height: 25px;
	cursor: pointer;
	z-index: 10;
}

.sound-on {
	background-image: url('../images/soundOn.png');
	background-repeat: no-repeat;
}

.sound-off {
	background-image: url('../images/soundOff.png');
	background-repeat: no-repeat;
}

.lives {
	position: absolute;
	top: 10px;
	left: 20px;
	color: yellow;
	font-size: 140%;
	font-weight: bold;
}

.score {
	position: absolute;
	top: 10px;
	left: 250px;
	color: white;
	font-size: 140%;
	font-weight: bold;
}

.game-over {
	position: absolute;
	top: 100px;
	left: 210px;
	color: #FF7F00;
	font-family: 'Rix전자오락 3D';
	font-size: 30px;
	cursor: default;
	display: none;
}

.game-over span {
	font-size: 20px;
	cursor: pointer;
	position: relative;
	left: 50px;
}

.game-over span:hover {
	color: #FFD700;
}
</style>
</head>


<body>
	<div id="page">



		<div id="contents"></div>
		<div style="padding-left: 10px; margin-top: 60px;">
			<div class="sound sound-on"></div>
			<audio class="myAudio" autoplay loop>
				<source src="../sounds/bg.mp3" type="audio/mpeg">
			</audio>
			<canvas id="myCanvas" width="600" height="400"></canvas>

			<div class="lives" id="a">
				LIVE: <span id="lives">0</span>
			</div>
			<div class="score" id="b">
				SCORE: <span id="score">0</span>
			</div>
			<div class="game-over" id="game-over">
				GAME OVER
				<p>
					<span id="restart">[Restart]</span>
				</p>
			</div>
			<script src="../js/main.js"></script>
		</div>




	</div>
</body>

</html>