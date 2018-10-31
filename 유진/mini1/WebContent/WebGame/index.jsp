<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">

<head>
<meta charset="utf-8">
<title>index</title>
<style>
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
	background-image: url('../image/b.png');
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
</head>
<body>
	<table align="center">
        <colgroup>
            <col width="180">
            <col width="640">
        </colgroup>
        <tbody>
            <tr>
                <!--1행-->
                
                 <td colspan="2"><a href="index.jsp"><img  id="title_png" width="780" style="" src="../image/title.png" alt="타이틀 사진"></a></td>
                
            </tr>
		<tbody>
			<tr>
				<!--메뉴-->
				<td id="menu" width="180" height="600"><img width="180"
					height="600" src="../image/menu.png" usemap="#imap"> <map
						name="imap">
						<!--이미지맵-->
						<area onfocus="this.blur();" shape="rect" coords="0,0,180,100"
							href="menu.jsp" target="myframe" alt="menu" />
						<!--첫번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,100,180,200"
							href="yujin.jsp" target="myframe" alt="yujin" />
						<!--두번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,200,180,300"
							href="euisuk.jsp" target="myframe" alt="euisuk" />
						<!--세번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,300,180,400"
							href="sora.jsp" target="myframe" alt="sora" />
						<!--네번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,400,180,500"
							href="boyeon.jsp" target="myframe" alt="boyeon" />
						<!--다섯번째메뉴-->
						<area onfocus="this.blur();" shape="rect" coords="0,500,180,600"
							href="game.jsp" target="myframe" alt="game" />
						<!--여섯번째메뉴-->
					</map></td>

				<!--내용-->
				<td id="content"><iframe width="640" height="600"
						scrolling="no" frameborder=0 name="myframe" src="menu.jsp"></iframe></td>
				</tr>
	
				<tr>
				<td height="70" colspan="2"
					style="color: #000000; font-size: 12px; text-align: center; margin-top: 0px;">비트 6기 전설의 4조
					ⓒ2018.09.28</td>
			</tr>
			<!--꼬리-->
		</tbody>
	</table>


	<!--빨강: #FF8E8E 주황: #FFB48D 노랑: #FFE7AB 초록: #CFFFAB 파랑: #ACE4FF  보라: #DECEFF  -->
</body>
</html>

