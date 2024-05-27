/**============================
 * 작성자 : whtk
 * 작성일 : 2024. 5. 21.
 * 기능 : 사용자의 데이터를 저장하는 객체
 ============================*/
package cs.dit;

public class MemberDTO {
    // 멤버 변수 선언
    private String id;  // 사용자 아이디를 저장하는 변수
    private String pwd; // 사용자 비밀번호를 저장하는 변수
    private String name; // 사용자 이름을 저장하는 변수

    // id 변수의 getter 메서드
    public String getId() {
        return id;
    }

    // id 변수의 setter 메서드
    public void setId(String id) {
        this.id = id;
    }

    // pwd 변수의 getter 메서드
    public String getPwd() {
        return pwd;
    }

    // pwd 변수의 setter 메서드
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    // name 변수의 getter 메서드
    public String getName() {
        return name;
    }

    // name 변수의 setter 메서드
    public void setName(String name) {
        this.name = name;
    }

    // 생성자: 객체 생성 시 id, name, pwd를 초기화
    public MemberDTO(String id, String name, String pwd) {
        super(); // 상위 클래스의 생성자 호출 (일반적으로 Object 클래스)
        this.id = id;   // 전달받은 id 값을 멤버 변수 id에 저장
        this.name = name; // 전달받은 name 값을 멤버 변수 name에 저장
        this.pwd = pwd;   // 전달받은 pwd 값을 멤버 변수 pwd에 저장
    }
}