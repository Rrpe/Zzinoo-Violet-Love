<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>Violet Love Story</title>

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

body {
   background: url("image/배경1.png") no-repeat center center fixed;
   -webkit-background-size: cover;
   -moz-background-size: cover;
   -o-background-size: cover;
   background-size: cover;
   margin-top: 50px;
}
/* 제목이랑 로그인 회원가입 */
.titlecolor {
   color: #EAEAEA;
   font-size: 100%
}

.titlecolor:hover {
   color: #C170EA;
   text-decoration: none !important;
}
/* 메뉴바  */
.innercolor {
   color: #BDBDBD;
   font-size: 150%;
}

.innercolor:hover {
   color: #C170EA;
}
/* 버튼 투명화시키고 이미지 넣음 */
.aaa {
   background-color: transparent !important;
   background-image: none !important;
   border-color: transparent;
   border: none;
   color: #FFFFFF;
}
/* 메뉴바 위치 */
#headdddd ul {
   margin-left: 30%;
   list-style: none;
   margin-bottom: 20px;
}

.row {
   margin-right: 15%;
   margin-left: 15%;
}

.menucolor {
   background-color: rgba(30, 50, 105, 0.8);
}

/* 리스트내용 */
.lists{
	color: #373640;
   	font-size: 150%
}
/* 리스트안에 */
.listin{
	color: #373640;
   	font-size: 120%
}
</style>

</head>

<body>
   <%-- <%

   String id = (String)session.getAttribute("idSession");
   
   if (id == null){
      System.out.println("세션값 없음");
      response.sendRedirect("Login.jsp");
   }
%> --%>
   <div class="container">
      <header class="blog-header py-3">
      <div
         class="row flex-nowrap justify-content-between align-items-center">
         <div class="col-4 text-center" align="center">
            <a class="titlecolor" href="Main.jsp"><h1>
                  Violet Love
                  </h2></a>
         </div>
         <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="titlecolor" href="Login.jsp">login</a>&nbsp;
            <a class="titlecolor" href="Signup.jsp">signup</a>
         </div>
      </div>
      </header>

      <header id="headdddd"> <nav class="menucolor">
      <button class="aaa" type="button" data-toggle="collapse"
         data-target="#navbarCollapse" aria-controls="navbarCollapse"
         aria-expanded="false" aria-label="Toggle navigation">
         <span><img src="image/하트트.png"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
         <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="innercolor" href="Mypage.sign">MyPage</a>&nbsp;
               &nbsp; &nbsp; &nbsp;</li>
            <li class="nav-item"><a class="innercolor" href="list.do">Story</a>&nbsp;&nbsp;
               &nbsp; &nbsp;</li>
            <li class="nav-item"><a class="innercolor" href="Mapmain.jsp">JMT
                  map</a>&nbsp; &nbsp; &nbsp; &nbsp;</li>
            <li class="nav-item"><a class="innercolor" href="Utube.jsp">Play</a>&nbsp;
               <br></li>
         </ul>
      </div>
      </nav> </header>

      <hr class="my-hr1">
      <div style="margin-bottom: 100px" class="container"></div>
      <div class="table-responsive" style="background-color: rgba(255, 255, 255, 0.5);">
      <div class="table-responsive">
         <table align="center" class="table">
            <form action="modify.do" method="post" enctype="Multipart/form-data">
               <input type="hidden" name="bId" value="${content_view.bId}">
               <tr>
                  <td class="lists"align="center">번호</td>
                  <td class="listin">${content_view.bId}</td>
               </tr>
               <tr>
                  <td class="lists"align="center">조회수</td>
                  <td class="listin">${content_view.bHit}</td>
               </tr>
               <tr>
                  <td class="lists"align="center">이름</td>
                  <td class="listin"><input type="text" name="userID"
                     value="${content_view.userID}" size="50"></td>
               </tr>
               <tr>
                  <td class="lists"align="center">제목</td>
                  <td class="listin"><input type="text" name="bTitle"
                     value="${content_view.bTitle}" size="50"></td>
               </tr>
               <tr>
                  <td class="lists"align="center">내용</td>
                  <td class="listin"><textarea name="bContent" class="form-control" rows="3"
                        cols="3">${content_view.bContent}</textarea></td>
               </tr>
               <tr>
                  <td class="lists"align="center">파일명</td>
                  <td class="listin"><input type="file" name="fileName" accept=".jpg, .png, .bmp, .gif, .jpeg"/></td>
               </tr>
               <tr>
                  <td align="center" class="lists" colspan="2"><input type="submit" value="수정">
                     &nbsp;&nbsp; <a href="list.do">목록보기</a> &nbsp;&nbsp; <a
                     href="delete.do?bId=${content_view.bId}">삭제</a> &nbsp;&nbsp;
               </tr>
            </form>
         </table>
      </div>
      </div>
   </div>
   <footer class="my-5 pt-5 text-muted text-center text-small"
      style="margin-top: 100px"> <br>
   <p class="mb-1">&copy; 홍일 소라 유진 준수</p>
   <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
   </ul>
   </footer>
</body>
</html>