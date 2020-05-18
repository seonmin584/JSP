<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="./dbconn.jsp"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css">
<title>게시판 등록</title>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1>게시판 수정</h1>
		</div>
	</div>
	<div class="container">
		<%
			String num = request.getParameter("num");
			PreparedStatement pstmt = null;

			ResultSet rs = null;
			String sql = "select * from board where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
		%>
		<form name="Board" action="./processBoard.jsp" method="post">
			<div class="form-group row">
				<label class="col-sm-1">작성자 :</label>
				<div class="col-sm-2">

					<input type="text" name="name" class="form-control"
						value="<%=rs.getString("name")%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-1">제 목 :</label>
				<div class="col-sm-2">
					<input type="text" name="title" class="form-control"
						value="<%=rs.getString("title")%>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">내용 :</label>
				<textarea name="content" cols="50" rows="10" class="form-control"
					maxlength="500"><%=rs.getString("content")%></textarea>
			</div>
			<%
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
			<input type="submit" id="sum" class="btn btn-primary" value="저장">
		</form>
	</div>
</body>
</html>