<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Dialog - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#dialog" ).dialog();
  } );
  </script>
</head>
<body>

<div id="dialog" title="Basic dialog"></div>
 
 <script type="text/javascript">

var myTest = new Array('서현이 언니 못생김', '의석이오빠 괴롭히기', '소라언니 안경더럽히기', '재홍이오빠 귤뺐어먹기', '홍일이오빠 이쁘다고 해주기', '준수오빠 금수저라고 놀리기');

document.getElementById(randomItem(myTest));



// 주어진 배열에서 요소 1개를 랜덤하게 골라 반환하는 함수
 function randomItem(a) {
 document.getElementById('dialog').innerHTML=a[Math.floor(Math.random() * a.length)];
}


</script>
</body>
</html>
