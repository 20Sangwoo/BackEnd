<!--
	작성자 : whtk
	작성일 : 2024. 6. 20.
	기능	 :
-->
<%@page import="cs.BoardDAO"%>
<%@page import="cs.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

 	String auth = request.getParameter("author");
    String title = request.getParameter("title");
    String detail = request.getParameter("detail");
    
    BoardDTO dto = new BoardDTO(auth, title, detail);
    BoardDAO dao = new BoardDAO();
    dao.noticeInsert(dto);
%>

<script>
alert("새로운 글을 등록했습니다.");
window.location.href = "noticeList.jsp";
</script>