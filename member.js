/**
 * 
 */

 // 로그인 입력창 메서드
/*==============================================================================*/
function openSignModal() {
    document.getElementById('signupModal').style.display = 'flex';
}

function openLoginModal() {
    document.getElementById('loginModal').style.display = 'flex';
}

function closeSignModal() {
    document.getElementById('signupModal').style.display = 'none';
}

function closeLoginModal() {
    document.getElementById('loginModal').style.display = 'none';
}

// 클릭 시 모달 닫기
window.onclick = function(event) {
    const signupModal = document.getElementById('signupModal');
    const loginModal = document.getElementById('loginModal');
    if (event.target === signupModal) {
        closeSignModal();
    }
    if (event.target === loginModal) {
        closeLoginModal();
    }
}



 function loadSignupPage() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("signupContent").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "signup.jsp", true);
    xhttp.send();
  }

  // 모달이 열릴 때 signup.jsp 파일을 불러옴
  $('#signupModal').on('shown.bs.modal', function (e) {
    loadSignupPage();
  });
/*==============================================================================*/