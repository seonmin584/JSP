<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="./dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from boadrd where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, num);
	rs = pstmt.executeQuery();
	if (rs.next()) {

		sql = "UPDATE board SET(?,?,?,SYSDATE)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.executeUpdate();
	}

	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("http://localhost:8080/K2notice/Main.jsp");
%>
