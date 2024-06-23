<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>영화는Moviemate</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>


    <!-- 범죄도시 Modal -->
<div class="modal fade" id="Mv_modal">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">범죄도시4</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <img src="./img/crimectiy.png" class="img-fluid" >
                </div>
                <div class="col-md-8">
                    <h5>범죄도시4</h5>
                    <p>신종 마약 사건 3년 뒤, 괴물형사 ‘마석도’(마동석)와 서울 광수대는 배달앱을 이용한 마약 판매 사건을 수사하던 중 수배 중인 앱 개발자가 필리핀에서 사망한 사건이 대규모 온라인 불법 도박 조직과 연관되어 있음을 알아낸다.
                     필리핀에 거점을 두고 납치, 감금, 폭행, 살인 등으로 대한민국 온라인 불법 도박 시장을 장악한 특수부대 용병 출신의 빌런 ‘백창기’(김무열)와 한국에서 더 큰 판을 짜고 있는 IT업계 천재 CEO ‘장동철’(이동휘). ‘마석도’는 더 커진 판을 잡기 위해 
                     ‘장이수’(박지환)에게 뜻밖의 협력을 제안하고 광역수사대는 물론, 사이버수사대까지 합류해 범죄를 소탕하기 시작하는데… 나쁜 놈 잡는데 국경도 영역도 제한 없다!
                     업그레이드 소탕 작전! 거침없이 싹 쓸어버린다!</p>
                	<table class="table">
                <tbody>
                  <tr>
                    <td><strong>개봉:</strong></td>
                    <td>2024.04.24</td>
                  </tr>
                  <tr>
                    <td><strong>등급:</strong></td>
                    <td>15세 이상 관람가</td>
                  </tr>
                  <tr>
                    <td><strong>장르:</strong></td>
                    <td>액션,범죄</td>
                  </tr>
                  <tr>
                    <td><strong>국가:</strong></td>
                    <td>대한민국</td>
                  </tr>
                  <tr>
                 
                    <td><strong>러닝타임:</strong></td>
                    <td>109분</td>
                  </tr>
                  <tr>
                    <td><strong>감독:</strong></td>
                    <td>허명행</td>
                  </tr>
                  <tr>
                    <td><strong>주연 배우:</strong></td>
                    <td>마동석,김무열,박지환,이동휘</td>
                  </tr>
                </tbody>
              </table>
                </div>
            </div>
        </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
         <button id="btn_youtube" type="button" class="btn btn-danger">예고편 보러가기</button>
         <button id="btn_main"    type="button" class="btn btn-danger">예매하기</button>
      </div>


<script>
  // 예고편 보러가기 버튼을 클릭했을 때 
  document.getElementById('btn_youtube').addEventListener('click', function() {
  // 예고편 영상 페이지로 
    window.location.href = 'https://www.youtube.com/watch?v=EsGwHQQ_NOI';
  });

  // 예매하기 버튼을 클릭했을 때
  document.getElementById('btn_main').addEventListener('click', function() {
    // 예매 페이지로
    window.location.href = 'tiket.jsp';
  });
</script>

   

    </div>
  </div>
</div>

	
</body>
</html>