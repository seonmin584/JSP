<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="./dbconn.jsp"%>
<%
	String num = request.getParameter("num");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from board";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		sql = "delete from board where num = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		pstmt.executeUpdate();
	} else
		out.println("일치하는 글이 없습니다.");

	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("Main.jsp");
%>