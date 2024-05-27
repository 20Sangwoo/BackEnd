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
/*==============================================================================*/