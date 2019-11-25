<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>회원 상세 정보</title>
<script type="text/javascript">
	function deleteMember(id) {
		if (confirm("해당 계정을 삭제합니다!!") == true)
			location.href = "./deleteMember.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<body>
	<jsp:include page="../Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보</h1>
		</div>
	</div>

	<div class="container">
		<%@include file="../dbconn.jsp"%>
		<%
			String id = request.getParameter("id");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
		%>
		<div class="row">
			<div class="col-md-6">
				<p>
					<b>아이디</b> :
					<%=rs.getString("id")%>
				</p>
				<p>
					<b>비밀번호</b> :
					<%=rs.getString("password")%>
				</p>
				<p>
					<b>이름</b> :
					<%=rs.getString("name")%>
				</p>
				<p>
					<b>성별</b> :
					<%=rs.getString("gender")%>
				</p>
				<p>
					<b>생일</b> :
					<%=rs.getString("birth")%>
				</p>
				<p>
					<b>메일</b> :
					<%=rs.getString("mail")%>
				</p>
				<p>
					<b>전화번호</b> :
					<%=rs.getString("phone")%>
				</p>
				<p>
					<b>주소</b> :
					<%=rs.getString("address")%>
				</p>
				<p>
					<b>가입 날짜</b>:
					<%=rs.getString("regist_day")%>
				</p>

				<a class="btn btn-success"
					href="/WebMarket/member/updateMember.jsp?id=<%=rs.getString("id")%>">수정</a>
				<a class="btn btn-danger"
					href="/WebMarket/member/deleteMember.jsp?id=<%=rs.getString("id")%>"
					onclick="deleteMember('<%=rs.getString("id")%>')">삭제</a> <a
					class="btn btn-primary" href="/WebMarket/welcome.jsp">메인페이지</a>
			</div>
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
		<hr>
	</div>
</body>
</html>