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
			System.out.println("�α����� �Ǿ��� ���� �������� �̵��� �ž�");
	%>
	<a href="Main.jsp">�α���</a>
	<%
		}else { System.out.println("�α׾ƿ�");
	%>
	<a href="logout"></a>
	<%
		}
	%>
</body>
</html>