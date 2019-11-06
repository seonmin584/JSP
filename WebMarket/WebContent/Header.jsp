<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
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
	<%@ page language="java" contentType="text/html; charset=EUC-KR"
		pageEncoding="UTF-8"%>
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
				<li class="nav-item"><a class="nav-link" href="#">...</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> 상품 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="./addProduct.jsp">상품 등록</a> <a
							class="dropdown-item" href="./products.jsp">상품 목록</a> <a
							class="dropdown-item" href="./editProduct.jsp?edit=update">상품
							수정</a> <a class="dropdown-item" href="./editProduct.jsp?edit=delete">상품
							삭제</a>
					</div>
			</ul>
			<c:choose>
				<c:when test="${empty sessionId}">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/loginMember.jsp"/>">로그인</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/addMember.jsp"/>'>회원가입</a></li>
				</c:when>
				<c:otherwise>
					<li style="padding-top: 7px; color: white">[<%=sessionId%>님]
					</li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/logoutMember.jsp"/>">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/updateMember.jsp"/>">회원 수정</a></li>
				</c:otherwise>
			</c:choose>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
</body>
</html>