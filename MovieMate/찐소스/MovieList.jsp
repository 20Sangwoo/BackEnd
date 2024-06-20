<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화는 MovieMate</title>
	<script src="member.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    <link href="main.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
	<%@include file="testmenubar.jsp" %>

       
  <div class="blackC">
      <div>
        <h2>전체영화</h2>
      </div>
            
<div class="content-wrapper d-flex flex-wrap justify-content-center gap-4">
     <div class="card" style="width: 18rem">
           <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/Furiosa.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
           <div class="card-body">
              <p class="card-text">
                   퓨리오사: 매드맥스 사가 <br> ★ ★ ★ ★ ☆
              </p>
           </div>
     </div>
            
            
     <div class="card" style="width: 18rem"
     data-bs-toggle="modal" data-bs-target="#Mv_modal">   <!-- 모달창 불러오는 부분 -->
          
            <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/crimectiy.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
            <div class="card-body">
                <p class="card-text">
                    범죄도시4 <br> ★ ★ ★ ★ ☆
               </p>
            </div>
     </div>
            
            
     <div class="card" style="width: 18rem">
         <a href="">
           <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/shedied.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
         </a>
           <div class="card-body">
              <p class="card-text">
                  그녀가 죽었다 <br> ★ ★ ★ ★ ☆
              </p>
           </div>
    </div>
            
    <div class="card" style="width: 18rem">
         <a href="">
           <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/Youth18X2.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
         </a>
           <div class="card-body">
             <p class="card-text">
                 청춘 18X2 너에게로 이어지는 길<br> ★ ★ ★ ★ ☆
             </p>
           </div>
    </div>
            
            
   <div class="card" style="width: 18rem">
        <a href="">
          <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/파묘.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
        </a>
          <div class="card-body">
            <p class="card-text">
                 파묘<br> ★ ★ ★ ★ ☆
            </p>
          </div>
  </div>
            
  <div class="card" style="width: 18rem">
        <a href="">
          <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/혹성탈출.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
        </a>
           <div class="card-body">
              <p class="card-text">
                  혹성탈출<br> ★ ★ ★ ★ ☆
              </p>
            </div>
  </div>
            
  <div class="card" style="width: 18rem">
        <a href="">
          <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/High-Q.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
        </a>
          <div class="card-body">
              <p class="card-text">
                  하이큐<br> ★ ★ ★ ★ ☆
              </p>
          </div>
  </div>
            
  <div class="card" style="width: 18rem">
         <a href="">
           <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/선재 업고 튀어(2024.05.28).png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
         </a>
          <div class="card-body">
             <p class="card-text">
                 선재 업고 튀어<br> ★ ★ ★ ★ ☆
             </p>
          </div>
  </div>
            
 <div class="card" style="width: 18rem">
        <a href="">
          <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/design.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
        </a>
         <div class="card-body">
            <p class="card-text">
               설계자<br> ★ ★ ★ ★ ☆
            </p>
         </div>
 </div>
            
  <div class="card" style="width: 18rem">
        <a href="">
          <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/원더랜드(2024.06.05).png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
        </a>
         <div class="card-body">
           <p class="card-text">
             원더랜드<br> ★ ★ ★ ★ ☆
          </p>
         </div>
 </div>
            
 <div class="card" style="width: 18rem">
       <a href="">
        <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/쇼생크 탈출 (2024.05.08).png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
       </a>
         <div class="card-body">
           <p class="card-text">
             쇼생크 탈출<br> ★ ★ ★ ★ ☆
           </p>
         </div> 
 </div>
            
            
<div class="card" style="width: 18rem">
       <a href="">
        <img class="bd-placeholder-img card-img-top" width="10%" height="200" src="./img/악마와의 토크쇼.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
       </a>
         <div class="card-body">
           <p class="card-text">
             악마와의 토크쇼<br> ★ ★ ★ ★ ☆
           </p>
         </div> 
         
         
  </div>            
</div>

<%@include file="modal.jsp" %>

	
</body>
</html>