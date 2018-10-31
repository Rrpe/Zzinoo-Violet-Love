<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<style>
body{
  background-image: url("image/popup1.png");
}

</style>

</head>

<body>
<center>
<div class="row flex-nowrap justify-content-between align-items-center">
<h2>-오늘의 미션 입니다-</h2>
</div>

<br><br><br><br><br>

<b><span style="background-color:rgba(255,255,255,0.7); color: #6E6E6E; font-weight: 900; font-size: 120%; font-family: Comic Sans MS;">
<script type="text/javascript" class="row flex-nowrap justify-content-between align-items-center">
	
var myTest = new Array('서현이 언니 못생김', '의석이오빠 괴롭히기', '소라언니 안경더럽히기', '재홍이오빠 귤뺐어먹기', '홍일이오빠 이쁘다고 해주기', '준수오빠 금수저라고 놀리기');
document.write(randomItem(myTest));

// 주어진 배열에서 요소 1개를 랜덤하게 골라 반환하는 함수
function randomItem(a) {
  return a[Math.floor(Math.random() * a.length)];
}

</script>
</span></b>
</center>
</body>
</html>