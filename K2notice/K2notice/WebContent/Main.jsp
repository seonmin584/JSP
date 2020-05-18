<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ include file="./dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>게시판</title>
<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인을 해주세요.");
			location.href='./loginMember.jsp';
			return false;
		}
		location.href = "./addboard.jsp"
	}
</script>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	<div class="container">
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>작성자</th>
				</tr>
				<%
					PreparedStatement pstmt = null;

					ResultSet rs = null;
					String sql = "select * from board ORDER BY num DESC";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();

					while (rs.next()) {
				%>
				<tr>
					<th><%=rs.getString("num")%></th>
					<th><a href="<c:url value="/BoardViewAction.jsp?num="/><%=rs.getString("num")%>"><%=rs.getString("title")%></a></th>
					<th><%=rs.getString("REGIST_DAY")%></th>
					<th><%=rs.getString("name")%></th>
				</tr>
				<%
					}
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				%>
			</table>
		</div>
		<div align="left">
			<table>
				<tr>
					<td width="100%" align="left">&nbsp;&nbsp; <select
						name="items" class="txt">
							<option value="subject">제목에서</option>
							<option value="content">본문에서</option>
							<option value="name">글쓴이에서</option>
					</select> <input name="text" type="text" /> <input type="submit"
						id="btnAdd" class="btn btn-primary " value="검색 " />
					</td>
					<td width="100%" align="right"><a href="./addboard.jsp"
						onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
					</td>
				</tr>
			</table>
		</div>
		<hr>
	</div>
</body>
</html>