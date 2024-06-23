<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cs.MemberDAO,cs.MemberDTO" %>
<%
// 로그인 폼에서 ID와 비밀번호를 가져옴
String id = request.getParameter("id");
String pwd = request.getParameter("password");

if (id != null && pwd != null) {
	MemberDAO dao = new MemberDAO();
	boolean isAuthenticated = dao.checkUser(id, pwd);

	if (isAuthenticated) {
    // 세션에 ID 저장
    	MemberDTO dto = dao.selectOne(id);
    	if (dto != null) {
        	HttpSession sessions = request.getSession();
        	sessions.setAttribute("userId", dto.getId());
        	sessions.setAttribute("username", dto.getUser());
        	sessions.setAttribute("isAdmin", dto.getisAdmin());
        	String contextPath = request.getContextPath();
        	response.sendRedirect("welcome.jsp");
    	} else {
        // 사용자 정보를 가져오지 못한 경우
%>
<script>
alert("사용자 정보를 가져오지 못했습니다.");
window.location.href = "../Main/main.jsp";
</script>
<%
    }
} else {
    // 로그인 실패 시 처리
%>
<script>
alert("로그인 실패: 아이디 또는 비밀번호가 일치하지 않습니다.");
window.location.href = "../Main/main.jsp";
</script>
<%
} }
%>