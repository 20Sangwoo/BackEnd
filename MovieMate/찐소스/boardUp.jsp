<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="testmenubar.jsp" %>
	
<div class="container mt-5">
    <div class="row">
      <div class="col-md-10 offset-md-1">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">게시글 작성</h5>
            <form action="noticeList" method="POST">
              <div class="form-group" >
                <label for="title">제목</label>
                <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
              </div>
              <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" rows="20" placeholder="내용을 입력하세요"></textarea>
              </div>
             
              <button type="submit" class="btn btn-primary">등록</button>
              <button type="button" class="btn btn-secondary">취소</button>
            </form>
          </div>
        </div>
      </div>
    </div>
</div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</body>
</html>