<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<style>
body {
	background: url("image/popup1.png") no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	margin-top: 50px;
}

</style>

</head>

<body>
<center>
<div class="row flex-nowrap justify-content-between align-items-center">
<h2>-오늘의 미션 입니다-</h2>
</div>

<br><br><br>

<b><span style="background-color:rgba(255,255,255,0.7); color: #6E6E6E; font-weight: 900; font-size: 200%; font-family: Comic Sans MS;">

<script type="text/javascript" class="row flex-nowrap justify-content-between align-items-center">

var myTest = new Array('배가고픈 친구를 위해 떡볶이를 사먹여 주세요', 'pc방 데이트로 색다른 기분 전환 어때요?', '언제 갈지는 모르지만 해외여행 계획 세워보기', '하루종일 영화보기', '이쁘다고 해주기', '전화로 사랑한다 해주기'
		,'손잡고 성인용품점 가보기' ,'서로 옷 바꿔입어보기');
document.write(randomItem(myTest));

// 주어진 배열에서 요소 1개를 랜덤하게 골라 반환하는 함수
function randomItem(a) {
  return a[Math.floor(Math.random() * a.length)];
}

</script>
<br><br>
<audio src="sounds/브금1 피아노.mp3" autopaly controls></audio><br><br>
</span></b>
</center>
</body>
</html>