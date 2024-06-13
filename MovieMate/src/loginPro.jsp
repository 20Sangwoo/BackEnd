<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cs.MemberDAO,cs.MemberDTO" %>
<%
    // 로그인 폼에서 ID와 비밀번호를 가져옴
    String id = request.getParameter("id");
    String pwd = request.getParameter("password");

    MemberDAO dao = new MemberDAO();
    boolean isAuthenticated = dao.checkUser(id, pwd);
	System.out.println(isAuthenticated);
    if (isAuthenticated) {
        // 세션에 ID 저장
        // System.out.println(id);
        session.setAttribute("id", id);
        String contextPath = request.getContextPath();
        
        
    	%>	
    		<script>
    		alert("환영합니다. 로그인에 성공했습니다!");
        	</script>
    	<%
        response.sendRedirect("welcome.jsp");
    } else {
        // 로그인 실패 시 처리
        request.setAttribute("errorMessage", "로그인 실패: 아이디 또는 비밀번호가 일치하지 않습니다.");
        //request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%> 