<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String)request.getParameter("userID");
		if (id != null){
			System.out.println("로그인이 되었고 다음 페이지로 이동할 거야");
	%>
	<a href="Main.jsp">로그인</a>
	<%
		}else { System.out.println("로그아웃");
	%>
	<a href="logout"></a>
	<%
		}
	%>
</body>
</html>