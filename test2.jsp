<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="main.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
   
</head>
<body>

<div class="auth-buttons">
  <button type="button" id="sign" data-bs-toggle="modal" data-bs-target="#myModal">
    Open modal
  </button>
</div>

<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">회원가입</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        	<div class="modal-content">
        	<h2 class="text-center font-weight-bold">사용자 입력</h2>
						<hr/>
						<form action="signupPro.jsp" method="post">
						  <div class="form-group">
					      <label for="id">ID:</label>
					      <input type="text" class="form-control" id="id" name="id">
					    </div>
					    <div class="form-group">
					      <label for="name">EMAIL:</label>
					      <input type="text" class="form-control" id="email" name="email">
					    </div>
					    <div class="form-group">
					      <label for="name">USERNAME:</label>
					      <input type="text" class="form-control" id="username" name="username">
					    </div>
					    <div class="form-group">
					      <label for="pwd">PASSWORD:</label>
					      <input type="password" class="form-control" id="pwd" name="pwd">
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="moda">회원가입</button>
      </div>

    </div>
  </div>
</div>


</body>
</html>