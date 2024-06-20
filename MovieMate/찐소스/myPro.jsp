<%@page import="cs.MemberDTO"%>
<%@page import="cs.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*, javax.naming.*, javax.sql.DataSource" %>
    
<%request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String email = request.getParameter("email");
String username = request.getParameter("username");
String password = request.getParameter("password");

MemberDTO dto = new MemberDTO(id, email, username, password);
new MemberDAO().userUpdate(dto);

%>

<script>
let ans = alert("변경되었습니다!");
if (!ans){
location.href='main.jsp';
}
</script>