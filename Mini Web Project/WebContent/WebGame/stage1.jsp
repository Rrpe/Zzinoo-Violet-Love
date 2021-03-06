<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko" style="background-color: #CFFFAB;">
<head>
<meta charset="utf-8">
<title>sora</title>
<style type="text/css">

#page {
   width: 595px;
   height: 560px;
   margin: 20px 15px 20px 15px;
   background-color: #E4FFD1;
}

section {
   padding-left: 20px;
   line-height: 25px;
   color: #183800;
}

caption {
   margin-top: 10px;
   margin-bottom: 10px;
   font-family: SunFlowerL;
   font-size: 140%;
}

div.backDiv {
  width:60px;
  height:60px;
  background-color: black;
  text-align: center;
  font: normal bolder 20pt Arial;
}

</style>
<script>
 
////////// 상수 //////////
var SIZE_SMALL = "s";    //초급
 
var ROW_SIZE_SMALL = 2;    //초급 가로 블럭 갯수
var COL_SIZE_SMALL = 2;    //초급 세로 블럭 갯수
 
var BLOCK_WIDTH = "60";    //블럭 가로 크기
var BLOCK_HEIGHT = "60";  //블럭 세로 크기
 
var BACK_STATUS = 0;    //뒷면 상태
var FRONT_STATUS = 1;    //앞면 상태
var TEMP_FRONT_STATUS = 2;  //임시로 뒤집은 앞면 상태
 
var HEXA_ARRAY = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f");  //16진수
////////// 상수 //////////
 
////////// 전역 변수 //////////
var rowSize = 0;      //가로 크기
var colSize = 0;      //세로 크기
var pairCount = 0;      //카드쌍 갯수
var turnCount = 0;      //뒤집은 횟수
 
var startFlag = false;    //게임 시작 플래그
var debugFlag = false;    //디버깅 플래그
 
var playTime = 0;      //게임 진행 시간(초)
var playTimer = null;    //게임 진행 시간 설정 변수
var cardTimer = null;    //카드 뒤집는 시간 설정 변수
 
var oTimeSpan = null;    //게임 시간 표시 SPAN
var oDebugDiv = null;    //디버그용 DIV
 
var pairsArray = null;    //카드 쌍 이차 배열 - [no][0]: 숫자, [no][1]: 색
var dataArray = null;    //게임 정보 이차 배열
var colorArray = null;    //카드 색 정보 이차 배열
var statusArray = null;    //카드 상태 정보 이차 배열
var cardArray = null;    //카드 정보 이차 배열
////////// 전역 변수 //////////
 
//게임 초기화
function initGame(size) {
  endGame();
  
  if (size == SIZE_SMALL) {      //초급
    rowSize = ROW_SIZE_SMALL;
    colSize = COL_SIZE_SMALL;
  } 
  pairCount = rowSize * colSize;
  turnCount = 0;
  
  //시간 초기화
  oTimeSpan.innerHTML = 0;
  
  //퍼즐 테이블 DIV 내용 삭제
  var oDiv = document.getElementById("puzzleDiv");
  oDiv.innerHTML = "";
  
  //테이블 생성
  var oTable = document.createElement("table");
  oTable.border = 0;
  oTable.cellPadding = 1;
  oTable.cellSpacing = 1;
  oTable.width = BLOCK_WIDTH * rowSize;
  oTable.height = BLOCK_HEIGHT * colSize;
  
  //행
  for (var i=0; i<rowSize; i++) {
    var oTR = document.createElement("tr");
    
    //열
    for (var j=0; j<colSize; j++) {
      var oTD = document.createElement("td");
      var sBlock = "<div onmousedown='turnOver(event, "+i+","+j+");' "
            + "class='backDiv'></div>";
      oTD.innerHTML = sBlock;
      oTR.appendChild(oTD);
    }
    oTable.appendChild(oTR);
  }
  
  oDiv.appendChild(oTable);
  
  //DIV에 테이블을 appendChild하면
  //테이블이 보여야 하는데 보이지 않아 이렇게 처리
  //Internet Explorer 7 에러?
  oDiv.innerHTML = oDiv.innerHTML;
  
  //DIV에 세팅된 후에 다시 꺼내야지만 진짜 TABLE 객체임
  oTable = oDiv.childNodes[0];
  
  //블럭 이차원 배열 생성
  cardArray = new Array();
  
  //매번 document.getElementById() 함수를 사용하여
  //카드를 찾는 것은 비효율적이므로
  //DIV 객체를 이차원 배열에 저장
  for (var i=0; i<rowSize; i++) {
    cardArray[i] = new Array();
    var oTR = oTable.rows[i];
    
    for (var j=0; j<colSize; j++) {  
      var oTD = oTR.cells[j];
      cardArray[i][j] = oTD.childNodes[0];
    }
  }
}
 
//게임 데이터 초기화
function initData() {
  pairsArray = new Array();
  for (var i=0; i<pairCount/2; i++) {
    var j=i*2;
    var colorCode = getRandomColor();
    
    pairsArray[j] = new Array();
    pairsArray[j][0] = i;
    pairsArray[j][1] = colorCode;
    
    pairsArray[j+1] = new Array();
    pairsArray[j+1][0] = i;
    pairsArray[j+1][1] = colorCode;
  }
  
  dataArray = new Array();
  colorArray = new Array();
  statusArray = new Array();
  for (var i=0; i<rowSize; i++) {
    dataArray[i] = new Array();
    colorArray[i] = new Array();
    statusArray[i] = new Array();
    for (var j=0; j<colSize; j++) {
      var randomIndex = Math.floor(Math.random() * pairCount);
      if (pairsArray[randomIndex][0] != -1) {
        dataArray[i][j] = pairsArray[randomIndex][0];
        colorArray[i][j] = pairsArray[randomIndex][1];
        
        //할당했으면 -1을 지정하여 비활성화
        pairsArray[randomIndex][0] = -1;
        
        statusArray[i][j] = BACK_STATUS;
        //cardArray[i][j].innerHTML = dataArray[i][j];
        cardArray[i][j].innerHTML = "";
        cardArray[i][j].style.backgroundColor = "pink";
      } else {
        //사용하지 않은 숫자가 나올 때까지 반복
        j--;
      }
    }
  }
}
 
//무작위 색 조회
function getRandomColor() {
  var hexaCode = getRandomChar() + getRandomChar() +
          getRandomChar() + getRandomChar() +
          getRandomChar() + getRandomChar();
          
  return "#" + hexaCode;
}
 
//무작위 16진수 조회
function getRandomChar() {
  var num = Math.floor(Math.random() * 10) + 5;
  if (num >= 0 && num < HEXA_ARRAY.length) {
    return HEXA_ARRAY[num].toUpperCase();
  } else {
    return "F";
  }
}
 
//뒤집기
function turnOver(evt, i, j) {
  if (!startFlag) return;
  if (statusArray[i][j] != BACK_STATUS) return;
 
  //상태와 색 변경
  statusArray[i][j] = TEMP_FRONT_STATUS;
  cardArray[i][j].style.backgroundColor = colorArray[i][j];
  cardArray[i][j].innerHTML = dataArray[i][j];
  
  if (turnCount == 0) {      //첫 번째 뒤집음
    turnCount++;
  } else if (turnCount >= 1) {  //두 번째 뒤집음
    turnCount = 0;
    
    //첫 번째로 뒤집어 놓은 카드 찾음
    var oneTurnRowIndex = -1;
    var oneTurnColIndex = -1;
    for (var k=0; k<rowSize; k++) {
      for (var l=0; l<colSize; l++) {
        if (k != i || l != j) {
          if (statusArray[k][l] == TEMP_FRONT_STATUS) {
            oneTurnRowIndex = k;
            oneTurnColIndex = l;
            break;
          }
        }
      }
    }
    if (oneTurnRowIndex == -1 || oneTurnColIndex == -1) {
      //카드 되돌리는 타이머 시작
      cardTimer = setTimeout(returnBack, 400);
      return;
    }
    
    //같으면
    if (dataArray[i][j] == dataArray[oneTurnRowIndex][oneTurnColIndex]) {
      statusArray[i][j] = FRONT_STATUS;
      statusArray[oneTurnRowIndex][oneTurnColIndex] = FRONT_STATUS;
 
      //게임 종료 체크
      checkEnd();
    } else {
      //카드 되돌리는 타이머 시작
      cardTimer = setTimeout(returnBack, 400);
    }
  }
}
 
//다시 되돌리기
function returnBack() {
  for (var i=0; i<rowSize; i++) {
    for (var j=0; j<colSize; j++) {
      if (statusArray[i][j] == TEMP_FRONT_STATUS) {
        statusArray[i][j] = BACK_STATUS;
        cardArray[i][j].style.backgroundColor = "pink";
        cardArray[i][j].innerHTML = "";
      }
    }
  }
  
  clearTimeout(cardTimer);
}
 
//게임 종료 검사
function checkEnd() {
  var allTurnCount = 0;
  for (var i=0; i<rowSize; i++) {
    for (var j=0; j<colSize; j++) {
      if (statusArray[i][j] == FRONT_STATUS) allTurnCount++;
    }
  }
  
  //뒤집은 갯수와 카드 수의 비교
  if (allTurnCount == rowSize * colSize) {
     var retVal = confirm("계속 게임을 하시겠습니까?");
     if(retVal == true){
        location.href = "stage2.jsp";
     }else{
        endGame();
     }
  }
}
 
//게임 시작
function startGame() {
  //먼저 게임 끝내고
  endGame();
  
  startFlag = true;
 
  //게임 데이터 초기화
  initData();
  
  //시간 초기화
  playTime = 15;
  
  oTimeSpan = document.getElementById("timeSpan");
  oTimeSpan.innerHTML = playTime;
  
  setplayTime();
}
 
//디버깅용 출력
function print(s) {
  if (!debugFlag) return;
  oDebugDiv.innerHTML += s + "<br>";
}
 
//시간 설정
function setplayTime() {
  if (startFlag) {
    oTimeSpan.innerHTML = playTime--;
    playTimer = setTimeout(setplayTime, 1000);  //1초마다 시간 증가
    if(playTime == -1){
       endGame();
    }
  }
}
 
//게임 종료
function endGame() {
  startFlag = false;
  clearTimeout(playTimer);
}
 
//화면 초기화(onload)
function initPage() {
  //객체 초기화
  oTimeSpan = document.getElementById("timeSpan");
  oDebugDiv = document.getElementById("debugDiv");
  
  
  //기본 초급 사이즈로 설정
  initGame(SIZE_SMALL);
}

 
</script>
</head>


<body onload="initPage();"> 

 
<br><br>
 
<!-- 퍼즐 테이블 DIV -->
<div id="puzzleDiv"></div>
 
<br>
 
<!-- 게임 시작과 끝 블럭 -->
<button onclick="startGame();" style = margin:10px>
<img src ='../image/button1.png' width="30px" height="70px"/></button>
<button onclick="endGame();">
<img src ='../image/button2.png' width="30px" height="70px"/></button>
 
<br><br>
 
<!-- 경과 시간 표시 -->
시간: <span id="timeSpan">0</span>초
 
<br><br>
 
<div id="debugDiv"></div>
<embed src = "../sounds/bg1.mp3" autostart ="false" loop="flase" width ="280"height="25"  hidden="true">
</body>

</html>