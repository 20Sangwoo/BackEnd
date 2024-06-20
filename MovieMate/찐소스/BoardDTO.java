/**============================
 * 작성자 : whtk
 * 작성일 : 2024. 5. 27.
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
     private String code;
 
     public String getId() {
         return id;
     }

     public void setId(String id) {
         this.id = id;
     }
 
     public String getAuth() {
         return auth;
     }
 
     public void setAuth(String auth) {
         this.auth = auth;
     }
 
     public String getTitle() {
         return title;
     }
 
     public void setTitle(String title) {
         this.title = title;
     }
 
     public String getDetail() {
         return detail;
     }
 
     public void setDetail(String detail) {
         this.detail = detail;
     }
     
     public String getDate() {
         return date;
     }
 
     public void setDate(String date) {
         this.date = date;
     }
     
     public String getCode() {
         return code;
     }
 
     public void setCode(String code) {
         this.code = code;
     }
 
     public BoardDTO(String id, String auth, String title, String detail, String date) {
         super(); // 상위 클래스의 생성자 호출 (일반적으로 Object 클래스)
         this.id = id;   
         this.auth = auth;
         this.title = title; 
         this.detail = detail;   
         this.date = date;
         this.code = code;
     }
 }