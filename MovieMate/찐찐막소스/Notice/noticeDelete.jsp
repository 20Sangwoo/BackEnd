<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="cs.BoardDAO,cs.BoardDTO"%>
<%
    request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");

	BoardDAO dao = new BoardDAO();
	dao.nboardDelete(id);
%>

<script>
    alert("삭제되었습니다!");
    location.href='noticeList.jsp';
</script>