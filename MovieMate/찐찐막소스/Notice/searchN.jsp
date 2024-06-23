<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="cs.BoardDAO"%>
<%@page import="cs.BoardDTO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>검색 결과</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="../Main/main.css" rel="stylesheet">
</head>
<body>
    <%@include file="../Main/mainBar.jsp" %>

    <div class="blackC" style="height: 1000px;">
        <div class="container"><br>
            <h1 class="text-center font-weight-bold">검색 결과</h1><br>
            <%
        	request.setCharacterEncoding("utf-8");	
            
                String searchField = request.getParameter("searchField");
                String searchText = request.getParameter("searchText");

                BoardDAO dao = new BoardDAO();
                BoardDTO dto = null;
                
                System.out.println(searchText);
                System.out.println(searchField);
                
                if ("title".equals(searchField)) {
                    dto = dao.selectOne(searchText);
                }
            %>

            <% if (dto != null) { %>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>날짜</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href='nDetail.jsp?id=<%=dto.getId()%>'><%= dto.getTitle() %></a></td>
                            <td><%= dto.getAuth() %></td>
                            <td><%= dto.getDate() %></td>
                        </tr>
                    </tbody>
                </table>
            <% } else { %>
                <p class="text-center">검색 결과가 없습니다.</p>
            <% } %>
        </div>
    </div>
</body>
</html>