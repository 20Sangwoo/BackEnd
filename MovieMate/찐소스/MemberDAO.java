/**============================
 * 작성자 : whtk
 * 작성일 : 2024. 5. 24.
 * 기능 : users 테이블 관련(insert, list, update, delete, select)
 ============================*/
package cs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

public class MemberDAO {
    
    // 데이터베이스 연결을 위한 커넥션 객체를 반환하는 메서드
    private Connection getConnection() throws Exception {
        Connection con = null;
        
        Context initCtx = new InitialContext(); // JNDI 초기 컨텍스트 가져오기
        Context envCtx = (Context) initCtx.lookup("java:comp/env"); // 환경 컨텍스트로 이동
        DataSource ds = (DataSource) envCtx.lookup("jdbc/jsw"); // 데이터 소스 객체를 찾기
        
        con = ds.getConnection(); // 데이터 소스에서 커넥션 객체 가져오기
        
        return con; // 커넥션 객체 반환
    }
//=============================================================================================================================
    // MemberDTO 객체를 받아서 데이터베이스에 저장하는 메서드
    public void createUser(MemberDTO dto) {
        String sql = "INSERT INTO users(id, email, username, password) VALUES(?, ?, ?, ?)";
        
        try (Connection con = getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, dto.getId());
            pstmt.setString(2, dto.getEmail());
            pstmt.setString(3, dto.getUser());
            pstmt.setString(4, dto.getPwd());
            
            pstmt.executeUpdate(); // 쿼리 실행하여 데이터베이스에 삽입
        } catch (Exception e) {
            e.printStackTrace();
            }
        }
//-----------------------------------------------------------------------------------------------------------------------------       
        // 주어진 id와 pwd로 사용자를 인증하는 메서드
        public boolean checkUser(String id, String pwd) {
            String sql = "SELECT * FROM users WHERE id = ? AND password = ?";
            boolean isAuthenticated = false;
            
            try (Connection con = getConnection();
                 PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, id);
                pstmt.setString(2, pwd);
                ResultSet rs = pstmt.executeQuery();
      
                if (rs.next()) {
                    // 로그인 성공
                    isAuthenticated = true;
                } else {
                    // 로그인 실패
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            return isAuthenticated;
        }
//-----------------------------------------------------------------------------------------------------------------------------
        public MemberDTO selectOne(String id) {
            MemberDTO dto = null;
            String sql = "SELECT * FROM users WHERE id = ?";
            
            try (Connection con = getConnection();
                 PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();
                
                if (rs.next()) {
                    dto = new MemberDTO(
                        rs.getString("id"),
                        rs.getString("email"),
                        rs.getString("username"),
                        rs.getString("password")
                    );
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            return dto;
        }
//----------------------------------------------------------------------------------------------------------------------------
        public MemberDTO getMyInfo(HttpServletRequest request) {
            HttpSession session = request.getSession();
            String userId = (String) session.getAttribute("userId");
            MemberDTO dto = null;
            
            if (userId != null) {
                String sql = "SELECT * FROM users WHERE id = ?";
                
                try (Connection con = getConnection();
                     PreparedStatement pstmt = con.prepareStatement(sql)) {
                    pstmt.setString(1, userId);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        if (rs.next()) {
                            dto = new MemberDTO(
                                    rs.getString("id"),
                                    rs.getString("email"),
                                    rs.getString("username"),
                                    rs.getString("password")
                            );
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            
            return dto;
        }
//----------------------------------------------------------------------------------------------------------------------------
public void userUpdate(MemberDTO dto) {
  String sql = "UPDATE users SET email = ?, username = ?, password = ? WHERE id = ?";
  
  try (Connection con = getConnection();
       PreparedStatement pstmt = con.prepareStatement(sql)) {
          pstmt.setString(1, dto.getEmail());
      pstmt.setString(2, dto.getUser());
      pstmt.setString(3, dto.getPwd());
      pstmt.setString(4, dto.getId());
      
      pstmt.executeUpdate();
  } catch (Exception e) {
      e.printStackTrace();
  }
}
}
//----------------------------------------------------------------------------------------------------------------------------- 
//public ArrayList<MemberDTO> list() {
//  ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
//  String sql = "SELECT * FROM users";
//  
//  try (Connection con = getConnection();
//       Statement stmt = con.createStatement();
//       ResultSet rs = stmt.executeQuery(sql)) {
//      while (rs.next()) {
//          MemberDTO dto = new MemberDTO(
//                  rs.getString("id"),
//                  rs.getString("email"),
//                  rs.getString("username"),
//                  rs.getString("password")
//          );
//          dtos.add(dto);
//      }
//  } catch (Exception e) {
//      e.printStackTrace();
//  }
//  
//  return dtos;
//}
//}
//-----------------------------------------------------------------------------------------------------------------------------
//    // 주어진 id에 해당하는 사용자의 정보를 삭제하는 메서드
//    public void delete(String id) {
//        String sql = "DELETE FROM users WHERE id = ?";
//        
//        try (Connection con = getConnection();
//             PreparedStatement pstmt = con.prepareStatement(sql)) {
//            pstmt.setString(1, id);
//            pstmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//-----------------------------------------------------------------------------------------------------------------------------   