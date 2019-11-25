<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");

	session.setAttribute("sessionId", id);

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select password from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);

	rs = pstmt.executeQuery();

	if (rs.next()) {
		if (password.equals(rs.getString("password"))) {
			session.setAttribute("id", id);
			response.sendRedirect("./welcome.jsp");
		} else {
%>
<script>
	location.href = 'login.jsp?error=1';
</script>
<%
	}
	} else {
%>
<script>
	location.href = 'login.jsp?error=1';
</script>
<%
	}
%>