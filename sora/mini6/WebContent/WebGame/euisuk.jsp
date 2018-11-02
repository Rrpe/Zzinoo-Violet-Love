<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko" style="background-color: #FFE7AB;">
<head>
<meta charset="utf-8">
<title>euisuk</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<style type="text/css">
{padding: 0; margin: 0;}
camvas {background: #eee; display: block; margin: 0 auto;}
a {
	text-decoration: none
}

a:link {
	opacity: 1.0
}

a:hover {
	opacity: 0.5
}

{
padding
:
 
0;
margin
:
 
0;
}
camvas {
	background: #eee;
	display: block;
	margin: 0 auto;
}

#page {
	width: 595px;
	height: 560px;
	margin: 20px 15px 20px 15px;
	background-color: #FFF1D1;
}
</style>
</head>


<body>
	<div id="page">
		<div style="color: #563d00;">
			<canvas id = "myCanvas" width="480" height="320"></canvas>


	<script>
	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d");
	var x = canvas.width/2;
	var y = canvas.height-30;
	var dx = 2;
	var dy = -2;
	var ballRadius = 7;
	var paddleHeight = 10;
	var paddleWidth = 75;
	var paddleWidth2 = 65;
	var paddleWidth3 = 50;
	var paddleX = (canvas.width-paddleWidth)/2;
	var paddleX2 = (canvas.width-paddleWidth2)/2;
	var paddleX3 = (canvas.width-paddleWidth3)/2;
	var rightPressed = false;
	var leftPressed = false;
	var brickRowCount = 3; //벽돌의 행
	var brickColumnCount = 5; //벽돌의 열
	var brickWidth = 80;//벽돌의 폭
	var brickHeight = 20;//벽돌의 높이
	var brickPadding = 15;//벽돌사이의패딩
	var brickOffsetTop = 30;//가장자리에서 오른쪽으로 그려지기 시작하지 않도록 위쪽과 왼쪽간격띄우기
	var brickOffsetLeft = 30;
	var score = 0;
	var lives =3;
	var rw;
	var rx;
	var times = 0;
	var bricks = [];
	for(var c=0; c<brickColumnCount; c++) {
    	bricks[c] = [];
    	for(var r=0; r<brickRowCount+1; r++) {
        	bricks[c][r] = { x: 0, y: 0, status: 1 };
    	}
	}
	//행과 열을  반복하고 새 벽돌을 만듬

	document.addEventListener("keydown", keyDownHandler, false);
	document.addEventListener("keyup", keyUpHandler, false);
	//document.addEventListener("mousemove", mouseMoveHandler, false);

	//function mouseMoveHandler(e) {
 	 //  var relativeX = e.clientX - canvas.offsetLeft;
  	  //if(relativeX > 0 && relativeX < canvas.width) {
  	    //  paddleX = relativeX - paddleWidth/2;
  	  //}
	//}



	function keyDownHandler(e) {
	    if(e.keyCode == 39) {
        	rightPressed = true;
    	}
    	else if(e.keyCode == 37) {
	        leftPressed = true;
	    }
	}
	function keyUpHandler(e) {
		if(e.keyCode == 39) {
	    	rightPressed = false;
	  	}
	  	else if(e.keyCode == 37) {
		    leftPressed = false;
		}
	}
	
	



	function collisionDetection() {
	    for(var c=0; c<brickColumnCount; c++) {
    	    for(var r=0; r<brickRowCount; r++) {
            	var b = bricks[c][r];
            	if(b.status == 1) {
	                if(x > b.x && x < b.x+brickWidth && y > b.y && y < b.y+brickHeight) {
    	                dy = -dy;
        	            b.status = 0;
            	        score+=10;
                	    drawmusic();
                	}
            	}
        	}
    	}
	}
	function collisionDetection2() {
	    for(var c=0; c<brickColumnCount; c++) {
    	    for(var r=0; r<brickRowCount; r++) {
            	var b = bricks[c][r];
            	if(b.status == 1||b.status == 0.5) {
            		if(x+ballRadius > b.x && x <b.x+brickWidth+ballRadius && y-ballRadius> b.y && y< b.y+brickHeight) {
    	                dy = -dy;
        	            b.status-=0.5;
        	            score+=5;
            	      drawmusic();
            	     
                	   
                	}
            	}
            	
            	
        	}
    	}
	}

	function time(){
		
		 times++;
		    ctx.font = "16px Arial";
		    ctx.fillStyle = "#AA3E3E";
		   
		    ctx.fillText('TIME: ' + Math.round(times / 100), canvas.width/2, 20);
		
		
	}function time2(){
		
		time();
		
	}
	function time3(){
		
		time2();
		
	}

	function drawScore() {
    	ctx.font = "16px Arial";
    	ctx.fillStyle = "#000000";
    	ctx.fillText("Score : "+score, 8, 20);
	}
	function drawLives() {
    	ctx.font = "16px Arial";
    	ctx.fillStyle = "#000000";
    	ctx.fillText("Lives: "+lives, canvas.width-65, 20);
	}

	function drawStage() {
	    ctx.font = "16px Arial";
    	ctx.fillStyle = "#000000";
    	ctx.fillText("Stage : 1",canvas.width-80, 200);
    
    
	}
	
	function drawStage2() {
    	ctx.font = "16px Arial";
    	ctx.fillStyle = "#000000";
    	ctx.fillText("Stage : 2",canvas.width-80, 200);
    }
	
	function drawStage3() {
    	ctx.font = "16px Arial";
    	ctx.fillStyle = "#000000";
	    ctx.fillText("Stage : 3",canvas.width-80, 200);
    }




	function drawmusic(){
	
		var audio = new Audio('psound.mp3');
		audio.play();

	}
	function alwaysmusic(){
		
		var audio = new Audio('HEARTSHAKER.mp3');
		audio.play();

	}

	function drawBall() {
    	ctx.beginPath();
    	ctx.arc(x, y, ballRadius, 0, Math.PI*2);
    	ctx.fillStyle = "#FF28A7";
    	ctx.fill();
    	ctx.closePath();
	}
	function drawPaddle() {
    	ctx.beginPath();
   		ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
   
    	ctx.fillStyle = "#000000";
    	ctx.fill();
    	ctx.closePath();
	}
	function drawPaddle2() {
    	ctx.beginPath();
   		ctx.rect(paddleX2, canvas.height-paddleHeight, paddleWidth2, paddleHeight);
   
    	ctx.fillStyle = "#000000";
    	ctx.fill();
    	ctx.closePath();
	}
	function drawPaddle3() {
    	ctx.beginPath();
   		ctx.rect(paddleX3, canvas.height-paddleHeight, paddleWidth3, paddleHeight);
   
    	ctx.fillStyle = "#000000";
    	ctx.fill();
    	ctx.closePath();
	}


	function drawBricks() {
	
	
	
    	for(var c=0; c<brickColumnCount; c++) {
        	for(var r=0; r<brickRowCount; r++) {
            	if(bricks[c][r].status == 1) {
                	var brickX = (c*(brickWidth+brickPadding))+brickOffsetLeft;
                	var brickY = (r*(brickHeight+brickPadding))+brickOffsetTop;
                	bricks[c][r].x = brickX;
                	bricks[c][r].y = brickY;
                	
                	ctx.beginPath();
                	ctx.rect(brickX, brickY, brickWidth, brickHeight);
                	ctx.fillStyle = "#AA3E3E";
                	ctx.fill();
                	ctx.closePath();
            	}
        	}
    	}
	}
	
	function drawBricks2() {
		
	
    	for(var c=0; c<brickColumnCount; c++) {
    		var rx = Math.floor(Math.random()*3)+1;
        	for(var r=0; r<brickRowCount; r++) {
        		var rw = Math.floor(Math.random()*3)+1;
            	if(bricks[c][r].status == 1) {
                	var brickX = (c*(brickWidth+brickPadding))+brickOffsetLeft;
                	var brickY = (r*(brickHeight+brickPadding))+brickOffsetTop;
                	bricks[c][r].x = brickX;
                	bricks[c][r].y = brickY;
              
                	ctx.beginPath();
                	ctx.rect(brickX+rx, brickY+rw, brickWidth, brickHeight);
                	ctx.fillStyle = "#AA3E3E";
                	ctx.fill();
                	ctx.closePath();
            	}
        	}
    	}
	}
	function drawBricks3() {
		
		
		
    	for(var c=0; c<brickColumnCount; c++) {
    		var rx = Math.floor(Math.random()*3)+1;
        	for(var r=0; r<brickRowCount; r++) {
        		var rw = Math.floor(Math.random()*3)+1;
            	if(bricks[c][r].status == 1) {
                	var brickX = (c*(brickWidth+brickPadding))+brickOffsetLeft;
                	var brickY = (r*(brickHeight+brickPadding))+brickOffsetTop;
                	bricks[c][r].x = brickX;
                	bricks[c][r].y = brickY;
 
                	ctx.beginPath();
                	ctx.rect(brickX+rx, brickY+rw, brickWidth, brickHeight);
                	ctx.fillStyle = "#A4A4A4";
                	ctx.fill();
                	ctx.closePath();
            	}
            	if(bricks[c][r].status==0.5) {
                	var brickX = (c*(brickWidth+brickPadding))+brickOffsetLeft;
                	var brickY = (r*(brickHeight+brickPadding))+brickOffsetTop;
                	bricks[c][r].x = brickX;
                	bricks[c][r].y = brickY;
 
                	ctx.beginPath();
                	ctx.rect(brickX, brickY, brickWidth, brickHeight);
                	ctx.fillStyle = "#AA3E3E";
                	ctx.fill();
                	ctx.closePath();
            	}
            	
        	}
    	}
	}

	function draw() {
		if(times==0){
		alwaysmusic();
		}
		
		if(score<150){
			ctx.clearRect(0, 0, canvas.width, canvas.height);
	    	drawBricks();
	    	drawBall();
	    	drawScore();
	    	drawPaddle();
	    	drawLives();
	    	time();
	    	drawStage();
	    	collisionDetection();
	    	
			    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
	    		    dx = -dx;
	    		}
	    		if(y + dy < ballRadius) {
	        		dy = -dy;
	    		}
	    		else if(y + dy > canvas.height-ballRadius) {
	        		if(x > paddleX && x < paddleX + paddleWidth) {
	            		dy = -dy;
	        		}
	        		else {
	        			lives--;
	        		if(!lives){
	            		alert("GAME OVER");
	            		document.location.reload();
	        		}
	        		else{
		        		x = canvas.width/2;
	                	y = canvas.height-30;
	                	dx = 1.8;
		                dy = -1.8;
		                paddleX = (canvas.width-paddleWidth)/2;
	    	    	}
	        	}
	    }
    	if(rightPressed && paddleX < canvas.width-paddleWidth) {
        	paddleX += 7;
    	}
    	else if(leftPressed && paddleX > 0) {
	        paddleX -= 7;
	    }
	    x += dx;
	    y += dy;
	    
      
	
	 	} 
	
	 	if(score>=150 && score<400){
	 		
	 	   
	 		
			if(score==150){
				
			 	dx = 2;
             	dy = -2;
				for(var c=0; c<brickColumnCount; c++) {
				    bricks[c] = [];
				    for(var r=0; r<brickRowCount; r++) {
				        bricks[c][r] = { x: 0, y: 0, status: 1 };
				        
				       
				    }
				}
				 x = canvas.width/2;
	                y = canvas.height-30;
	                score+=100;
		 	}
			ctx.clearRect(0, 0, canvas.width, canvas.height);
		
		    drawBricks2();
		    drawBall();
		    drawScore();
		    time2();
		    drawPaddle2();
		    drawLives();
		    drawStage2();
		    collisionDetection();
		    
		   
		    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
		        dx = -dx;
		    }
		    if(y + dy < ballRadius) {
		        dy = -dy;
		    }
		    
		    else if(y + dy > canvas.height-ballRadius) {
		        if(x > paddleX2 && x < paddleX2 + paddleWidth2) {
		            dy = -dy;
		        }
		        else {
		        	lives--;
		        	if(!lives){
		     	       alert("GAME OVER");
		        	    document.location.reload();
		        	}
		        	else{
		        		x = canvas.width/2;
		                y = canvas.height-30;
		                dx = 2;
		                dy = -2;
		                paddleX2 = (canvas.width-paddleWidth2)/2;
		        	}
		        }
		    }
	    	if(rightPressed && paddleX2 < canvas.width-paddleWidth) {
	        	paddleX2 += 7;
	    	}
	    	else if(leftPressed && paddleX2 > 0) {
		        paddleX2 -= 7;
		    }
		    x += dx;
		    y += dy;
		}
	 	if(score>=400){
			if(score==400){
				
				dx = 2.5;
            	dy = -2.5;
			 
			 	for(var c=0; c<brickColumnCount; c++) {
				    bricks[c] = [];
				    for(var r=0; r<brickRowCount; r++) {
				        bricks[c][r] = { x: 0, y: 0, status: 1 };
				    }
				}
			 	
			 	x = canvas.width/2;
                y = canvas.height-30;
                score+=100;
		 	}
          		
		
			ctx.clearRect(0, 0, canvas.width, canvas.height);
		
			drawBricks3();
		    drawBall();
		    time3();
		    drawScore();
		    drawPaddle3();
		    drawLives();
		    drawStage3();
		    collisionDetection2();
		    drawBricks3();
		    
		   
		    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
		        dx = -dx;
		    }
		    if(y + dy < ballRadius) {
		        dy = -dy;
		    }
		    
		    else if(y + dy > canvas.height-ballRadius) {
		        if(x > paddleX3 && x < paddleX3 + paddleWidth3) {
		            dy = -dy;
		        }
		        else {
		        	lives--;
		        	if(!lives){
		    	        alert("GAME OVER");
		        	    document.location.reload();
		        	}
		        	else{
		        		x = canvas.width/2;
		                y = canvas.height-30;
		                dx = 2.5;
		                dy = -2.5;
		                paddleX3 = (canvas.width-paddleWidth3)/2;
		        	}
		        }
		    }
	    	if(rightPressed && paddleX3 < canvas.width-paddleWidth) {
	        	paddleX3 += 7;
	    	}
	    	else if(leftPressed && paddleX3 > 0) {
	        	paddleX3 -= 7;
	    	}
	    	x += dx;
	    	y += dy;
		    
			
	    	if(score==650){
	    		 alert("GAME Clear!");
	        	    document.location.reload();
	    	}
		}
	 	
	 	requestAnimationFrame(draw);
		
	}



	draw();

</script>

		</div>

	</div>
</body>

</html>
