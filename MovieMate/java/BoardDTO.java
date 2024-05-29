/**============================
 * 작성자 : whtk
 * 작성일 : 2024. 5. 21.
 * 기능 : 게시판의 데이터를 저장하는 객체
 ============================*/
 package cs;

 public class BoardDTO {
     // 게시판 변수 선언
     private String id;  // 게시판 아이디를 저장하는 변수
     private String auth; // 작성자 닉네임을 저장하는 변수
     private String title; // 글 제목을 저장하는 변수
     private String detail; // 글 내용을 저장하는 변수
     private String date;
 
     // id 변수의 getter 메서드
     public String getId() {
         return id;
     }
 
     // id 변수의 setter 메서드
     public void setId(String id) {
         this.id = id;
     }
 
     // pwd 변수의 getter 메서드
     public String getAuth() {
         return auth;
     }
 
     // pwd 변수의 setter 메서드
     public void setAuth(String auth) {
         this.auth = auth;
     }
 
     // username 변수의 getter 메서드
     public String getTitle() {
         return title;
     }
 
     // username 변수의 setter 메서드
     public void setTitle(String title) {
         this.title = title;
     }
 
     // name 변수의 setter 메서드
     public String getDetail() {
         return detail;
     }
 
     // name 변수의 setter 메서드
     public void setDetail(String detail) {
         this.detail = detail;
     }
     
     // id 변수의 getter 메서드
     public String getDate() {
         return date;
     }
 
     // id 변수의 setter 메서드
     public void setDate(String date) {
         this.date = date;
     }
 
     // 생성자: 객체 생성 시 id, username, eamil, pwd를 초기화
     public BoardDTO(String id, String auth, String title, String detail, String date) {
         super(); // 상위 클래스의 생성자 호출 (일반적으로 Object 클래스)
         this.id = id;   // 전달받은 id 값을 멤버 변수 id에 저장
         this.auth = auth;
         this.title = title; // 전달받은 email 값을 멤버 변수 email에 저장
         this.detail = detail;   // 전달받은 pwd 값을 멤버 변수 pwd에 저장
         this.date = date;
     }
 }