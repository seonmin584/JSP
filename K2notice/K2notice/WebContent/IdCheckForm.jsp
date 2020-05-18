<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<%
	String id = request.getParameter("id");
%>
<html>
<head>
<title>아이디 중복체크</title>
</head>
<body>
	<div align="center">
		<h3>아이디 :</h3>
	</div>
	<div align="center">
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
		%>
		<h3>다른 사람이 이미 사용중입니다.</h3>
		<input type="button" value="창닫기" onclick="window.close()">
		<%
			} else {
		%>
		<h3>아이디는 사용 가능합니다.</h3>
		<input type="button" value="창닫기" onclick="window.close()">
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