<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="./dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="./Main.jsp">게시판</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 게시판 목록 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">준비중</a> <a class="dropdown-item"
							href="#">준비중</a> <a class="dropdown-item" href="#">준비중</a>
					</div></li>
			</ul>
		</div>
		<%
			if (sessionId == null) {
		%>
		<a class="nav-link" href="<c:url value="/loginMember.jsp"/>">로그인</a> <a
			class="nav-link" href='<c:url value="/addMember.jsp"/>'>회원가입</a>
		<%
			} else {

				String id = sessionId;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String sql = "select * from member where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				while (rs.next()) {
		%>
		<a style="color: black">[<%=rs.getString("name")%>님]
		</a> <a class="nav-link" href="<c:url value="/logoutMember.jsp"/>">로그아웃</a>
		<a class="nav-link"
			href="<c:url value="/resultMember.jsp?id="/><%=sessionId%>">회원 정보</a>
		<%
			}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
			}
		%>
	</nav>
</body>
</html>