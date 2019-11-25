<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#" style="color: PaleGreen"><a
			href="welcome.jsp">Shopping Mall</a></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> 상품 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="<c:url value="/addProduct.jsp"/>">상품
							등록</a> <a class="dropdown-item" href="<c:url value="/products.jsp"/>">상품
							목록</a> <a class="dropdown-item"
							href="<c:url value="/editProduct.jsp?edit=update"/>">상품 수정</a> <a
							class="dropdown-item"
							href="<c:url value="/editProduct.jsp?edit=delete"/>">상품 삭제</a>
					</div>
			</ul>
			<%
				if (sessionId == null) {
			%>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value="/member/loginMember.jsp"/>">로그인</a></li>
			<li class="nav-item"><a class="nav-link"
				href='<c:url value="/member/addMember.jsp"/>'>회원가입</a></li>
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

			<li style="color: black">[<%=rs.getString("name")%>님]
			</li>
			<li><a class="nav-link"
				href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
			<li><a class="nav-link"
				href="<c:url value="/member/resultMember.jsp?id="/><%=sessionId%>">회원
					정보</a></li>
			<%
				}
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();

				}
			%>
			<form class="form-inline my-2 my-lg-0" action="./search.jsp">
				<input class="form-control mr-sm-2" type="search" name="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
</body>
</html>