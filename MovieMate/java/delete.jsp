<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="cs.dit.MemberDAO, cs.dit.MemberDTO"%>
<%
    request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");

    MemberDAO dao = new MemberDAO();
	dao.delete(id);
%>

<script>
    alert("삭제되었습니다!");
    location.href='list.jsp';
</script>