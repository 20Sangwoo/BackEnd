<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="cs.dit.MemberDAO, cs.dit.MemberDTO" %>
<%
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");

    MemberDTO dto = new MemberDTO(id, name, pwd);
    MemberDAO dao = new MemberDAO();
    dao.update(dto);
%>

<script>
    let ans = alert("변경되었습니다!");
    if (!ans){
        location.href='list.jsp';
    }
</script>