<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Form_Processing</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String gmail = request.getParameter("gmail");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String city = request.getParameter("city");
		String address= request.getParameter("address");
		String sex = request.getParameter("sex");
		String hobby1 = request.getParameter("hobby1");
		String hobby2 = request.getParameter("hobby2");
		String hobby3 = request.getParameter("hobby3");
	%>
	<p>
		���̵� :
		<%=id%>
	<p>
		��й�ȣ :
		<%=password%>
	<p> �̸��� :
		<%= email %>@<%=gmail %>
	<p>
		�̸� :
		<%=name%>
	<p>
		����ó :
		<%=phone1%>
		<%=phone2%>
		<%=phone3%>
		
	<p>
		�ּ� :
		<%= city %>
		<%= address %>
		
	<p>
		���� :
		<%=sex%>
	<p>
		��� :
		<%=hobby1%>
		<%=hobby2%>
		<%=hobby3%>
		<jsp:include page="footer.jsp" />
</body>
</html>