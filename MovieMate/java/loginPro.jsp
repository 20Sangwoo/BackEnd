<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*, javax.servlet.http.HttpSession, javax.sql.*, javax.naming.*" %>
<%@ page import="cs.dit.MemberDAO, cs.dit.MemberDTO"%>
<%
    // 1. 로그인을 위해 id와 pwd를 login 폼에서 가지고 올 것
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    MemberDAO dao = new MemberDAO();
    boolean isAuthenticated = dao.checkUser(id, pwd);
    
    if (isAuthenticated) {
        response.sendRedirect("welcome.jsp");
    } else {
        // 로그인 실패 시 처리
%>
    <script type="text/javascript">
        if (confirm("존재하지 않는 사용자입니다. 등록하시겠습니까?") == true) {
            location.href = 'insertForm.jsp';
        } else {
            history.back();
        }
    </script>
<%
    }
%>
