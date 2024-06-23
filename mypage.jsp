<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="cs.MemberDTO, cs.MemberDAO"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        max-width: 500px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #f9f9f9;
    }
    .form-container h1 {
        text-align: center;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<%
    MemberDAO dao = new MemberDAO();
    MemberDTO my = dao.getMyInfo(request);
%>
    <div class="form-container">
        <h1>마이 페이지</h1>
        
        <form action="myPro.jsp" method="post">
            <div class="mb-3">
                <label for="id" class="form-label">아이디:</label>
              <%--   <input type="text" id="id" name="id" value="<%= my.getId()%>" class="form-control" readonly> --%>
            </div>
            
            <div class="mb-3">
                <label for="email" class="form-label">이메일:</label>
                <%-- <input type="email" id="email" name="email" value="<%= my.getEmail()%>" class="form-control"> --%>
            </div>
            
            <div class="mb-3">
                <label for="username" class="form-label">사용자 명:</label>
                <%-- <input type="text" id="username" name="username" value="<%= my.getUser()%>" class="form-control"> --%>
            </div>
            
            <div class="mb-3">
                <label for="password" class="form-label">새 비밀번호:</label>
                <%-- <input type="password" id="password" name="password" value="<%= my.getPwd()%>" class="form-control"> --%>
            </div>
            
            <div class="text-center">
                <input type="submit" value="변경" class="btn btn-primary">
                <button type="button" class="btn btn-secondary" onclick="cancelUpdate()">취소</button>
                <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#reservationModal">예매내역</button>
            </div>
        </form>
    </div>

    <div class="modal fade" id="reservationModal" tabindex="-1" aria-labelledby="reservationModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="reservationModalLabel">예매내역</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <ul class="list-group">
                        <!-- 예매 리스트 -->
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        function cancelUpdate() {
            if (confirm("변경을 취소하시겠습니까?")) {
                location.href = 'main.jsp';
            }
        }
    </script>
</body>
</html>
