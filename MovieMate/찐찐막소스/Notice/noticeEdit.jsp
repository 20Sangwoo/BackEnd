<%@page import="cs.BoardDTO"%>
<%@page import="cs.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*, javax.naming.*, javax.sql.DataSource" %>
    
<%request.setCharacterEncoding("utf-8");

String title = request.getParameter("title");
String detail = request.getParameter("detail");

BoardDTO dto = new BoardDTO(title, detail);
new BoardDAO().nboardUpdate(dto);

%>

<script>
alert("변경되었습니다!");
location.href='noticeList.jsp';
}
</script>