<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>Moviemate</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="main.css" rel="stylesheet"> 
</head>
<body>
	<%@ include file="mainBar.jsp"%>

     <div class="blackC">
     <div>
         <h1>개봉예정 영화</h1>
     </div>
        <div class="content-wrapper d-flex flex-wrap justify-content-center gap-4">
            <div class="card" style="width: 18rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" width="200%" height="350" src="../img/design.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                        설계자 <br> ★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
            <div class="card" style="width: 18rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" width="200%" height="350" src="../img/원더랜드(2024.06.05).png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                        원더랜드  <br>★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
            
            <div class="card" style="width: 18rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" width="200%" height="350" src="../img/아침이 오면 공허해진다(2024.05.29).png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                        아침이 오면 공허해진다 <br> ★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
        </div>
         <div style="text-align: center; ">
            	<h2>이달의 영화 Top4</h2>
            </div>
            
        <div class="content-wrapper d-flex flex-wrap justify-content-center gap-4">
          <div class="card" style="width: 13rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" height="250" src="../img/Furiosa.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                        퓨리오사: 매드맥스 사가 <br> ★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
            
             <div class="card" style="width: 13rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" height="250" src="../img/crimectiy.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                          범죄도시4 <br> ★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
            
             <div class="card" style="width: 13rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" height=250 src="../img/shedied.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                         그녀가 죽었다 <br> ★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
            
             <div class="card" style="width: 13rem">
                <a href="">
                    <img class="bd-placeholder-img card-img-top" height="250" src="../img/Youth18X2.png" role="img" aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
                </a>
                <div class="card-body">
                    <p class="card-text">
                         청춘 18X2 너에게로 이어지는 길<br> ★ ★ ★ ★ ☆
                    </p>
                </div>
            </div>
            
     </div>
  </div>
</body>
</html>