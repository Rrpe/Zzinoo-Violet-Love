<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Mypage</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="blog.css" rel="stylesheet">
    
    <style type="text/css">
    
    .my-hr1 {
    border: 4;
    height: 1px;
    background: #ccc;
     }
      
    </style>
 
  </head>

  <body>

    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 text-center" align="center">
            <a class="blog-header-logo text-dark" href="Main.jsp"><h1>Violet Love</h1></a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="text-muted" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3"><circle cx="10.5" cy="10.5" r="7.5"></circle><line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
            </a>
            <a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a>
          </div>
        </div>
      </header>
      </div>
       <hr class="my-hr1">

      <div class="nav-scroller py-1 mb-2" align="center">
        <nav class="nav d-flex justify-content-between">
        <table>
          <a class="p-2 text-muted" href="Mypage.jsp">MyPage</a>&nbsp; &nbsp; &nbsp; &nbsp;
          <a class="p-2 text-muted" href="Mapmain.jsp">memory map</a>&nbsp; &nbsp; &nbsp; &nbsp;
          <a class="p-2 text-muted" href="#">wish list</a>&nbsp; &nbsp; &nbsp; &nbsp;
          <a class="p-2 text-muted" href="#">today mission</a>&nbsp; &nbsp; &nbsp; &nbsp;
        </table>
        </nav>
      </div>
      <hr class="my-hr1">
      
      <div style="margin-bottom: 100px"></div>
      <table align="center" width="1000" height="100">
      <tr>
      <td><B>회원정보</B></td>
      </tr>
      <tr>
         <td>아이디</td>
         <td>
            <input type="text" name="id" style="margin-bottom: 15px"/>
         </td>
      </tr>
       <tr>
         <td>비밀번호</td>
         <td>
            <input type="password" name="password" style="margin-bottom: 15px" />
         </td>
      </tr>
       <tr>
         <td>비밀번호 확인</td>
         <td>
            <input type="password" name="password" style="margin-bottom: 15px" />
         </td>
      </tr>
       <tr>
         <td>닉네임</td>
         <td>
            <input type="text" name="nickName" style="margin-bottom: 15px" />
         </td>
      </tr>
       <tr>
         <td>이메일</td>
         <td>
            <input type="text" name="email" style="margin-bottom: 15px"/>
            @ <select>
                  <option value="naver.com">naver.com</option>
                  <option value="daum.com">daum.com</option>
                  <option value="nate.com">nate.com</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="yahoo.com">yahoo.com</option>
               </select>
         </td>
      </tr>
       <tr>
         <td>주소</td>
         <td>
            <input type="text" name="address" style="margin-bottom: 15px"/>
         </td>
      </tr>
       <tr>
         <td>전화번호</td>
         <td><select>
                  <option value="010">010</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
               </select>-
            <input type="text" name="phoneNumber"/>-
            <input type="text" name="phoneNumber" style="margin-bottom: 15px"/>
         </td>
      </tr>
      
      <tr>
      <td style="text-align: center" colspan="2">
      <input type="button" onclick="modify()" value="수정완료">
      </td>
      </tr>
      </table>
  </body>
</html>