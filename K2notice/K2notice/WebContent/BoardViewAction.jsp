<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<html>
<head>
<script type="text/javascript">
	function deleteboard(num) {
		if (confirm("해당 글을 삭제합니다!!") == true)
			location.href = "./deleteboard.jsp?num=" + num;
		else
			return;
	}
</script>
</head>
<body>
	<jsp:include page="./Header.jsp" />
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
		<div class="form-group row">
			<label class="col-sm-1">작성자 :</label>
			<div class="col-sm-2">
				<h4><%=rs.getString("name")%></h4>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-1">제 목 :</label>
			<div class="col-sm-2">
				<h4><%=rs.getString("title")%></h4>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-1">내용 :</label>
			<div class="col-sm-2">
				<h4><%=rs.getString("content")%></h4>
			</div>
		</div>
		<a class="btn btn-danger" href="deleteboard.jsp?num=<%=rs.getString("num")%>"
			onclick="deleteboard('<%=rs.getString("num")%>')">삭제</a> <a
			class="btn btn-success"
			href="updateboard.jsp?num=<%=rs.getString("num")%>">수정</a>
		<a href="Main.jsp" class="btn btn-primary">메인페이지</a>
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
</body>
</html>