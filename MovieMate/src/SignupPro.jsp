<%@page import="cs.dit.MemberDAO"%>
<%@page import="cs.dit.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*, javax.sql.*, javax.naming.*"%>
    
<%	
//한글처리
      request.setCharacterEncoding("utf-8");
//폼에서 전달된 파라메터 받기
    String id = request.getParameter("id");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String pwd = request.getParameter("password");	
    
    MemberDTO dto = new MemberDTO(id, email, username, pwd); // DTO에 전달 받은 파라메터 값을 전달
    MemberDAO dao = new MemberDAO(); // DAO 객체 호출
    dao.insert(dto); // DTO에 전달한 값을 DAO의 insert 메서드 실행에 사용
	
	//list.jsp로 이동하기
	response.sendRedirect("main.jsp");
%>