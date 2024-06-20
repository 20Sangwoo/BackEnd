/**============================
 * 작성자 : whtk
 * 작성일 : 2024. 5. 27.
 * 기능 : board 테이블 관련(insert, list, update, delete, select)
 ============================*/
 
package cs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
 
 public class BoardDAO {
     
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
  // 공지사항 페이지 글 작성
     public void noticeInsert(BoardDTO dto) {
         String sql = "INSERT INTO board(author, title, detail, code) VALUES(?, ?, ?, 'Notice')";
         
         try (Connection con = getConnection();
              PreparedStatement pstmt = con.prepareStatement(sql)) {
             pstmt.setString(1, dto.getAuth());
             pstmt.setString(2, dto.getTitle());
             pstmt.setString(3, dto.getDetail());
             
             pstmt.executeUpdate(); // 쿼리 실행하여 데이터베이스에 삽입
         } catch (Exception e) {
             e.printStackTrace();
         }
     }
//-----------------------------------------------------------------------------------------------------------------------------
     // 공지사항 게시판 리스트 + 페이징 
     public ArrayList<BoardDTO> noticeList(int p, int numOfRecords) {
         ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
         String sql = "SELECT id, author, title, detail, date FROM board WHERE code = 'Notice' ORDER BY id DESC LIMIT ?, ?";
         
         try (Connection con = getConnection();
              PreparedStatement pstmt = con.prepareStatement(sql)) {
             pstmt.setInt(1, (p - 1) * numOfRecords);
             pstmt.setInt(2, numOfRecords);
             
             ResultSet rs = pstmt.executeQuery();
             
             while (rs.next()) {
            	 BoardDTO dto = new BoardDTO(
                     rs.getString("id"),
                     rs.getString("author"),
                     rs.getString("title"),
                     rs.getString("detail"),
                     rs.getString("date")
                 );
                 dtos.add(dto);
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
         
         return dtos;
     }
//-----------------------------------------------------------------------------------------------------------------------------   
     // 공지사항 게시물 수를 반환하는 메서드
     public int getNCount() {
         int count = 0;
         String sql = "SELECT COUNT(id) AS count FROM board WHERE code = 'Notice'";
         
         try (Connection con = getConnection();
              Statement stmt = con.createStatement();
              ResultSet rs = stmt.executeQuery(sql)) {
             if (rs.next()) {
                 count = rs.getInt("count");
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
         
         return count;
     }
//=============================================================================================================================
     // Q&A 게시판 리스트 + 페이징
     public ArrayList<BoardDTO> QAList(int p, int numOfRecords) {
         ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
         String sql = "SELECT id, author, title, detail, date FROM board WHERE code = 'QA' ORDER BY id DESC LIMIT ?, ?";
         
         try (Connection con = getConnection();
              PreparedStatement pstmt = con.prepareStatement(sql)) {
             pstmt.setInt(1, (p - 1) * numOfRecords);
             pstmt.setInt(2, numOfRecords);
             
             ResultSet rs = pstmt.executeQuery();
             
             while (rs.next()) {
            	 BoardDTO dto = new BoardDTO(
                     rs.getString("id"),
                     rs.getString("author"),
                     rs.getString("title"),
                     rs.getString("detail"),
                     rs.getString("date")
                 );
                 dtos.add(dto);
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
         
         return dtos;
     }
//---------------------------------------------------------------------------------------------------------------------------------
     // Q&A 페이지 글 작성
     public void qaInsert(BoardDTO dto) {
         String sql = "INSERT INTO board(author, title, detail, code) VALUES(?, ?, ?, 'QA')";
         
         try (Connection con = getConnection();
              PreparedStatement pstmt = con.prepareStatement(sql)) {
             pstmt.setString(1, dto.getAuth());
             pstmt.setString(2, dto.getTitle());
             pstmt.setString(3, dto.getDetail());
             
             pstmt.executeUpdate(); // 쿼리 실행하여 데이터베이스에 삽입
         } catch (Exception e) {
             e.printStackTrace();
         }
     }
//---------------------------------------------------------------------------------------------------------------------------------
 // Q&A 게시물 수를 반환하는 메서드
 public int getQACount() {
     int count = 0;
     String sql = "SELECT COUNT(id) AS count FROM board WHERE code = 'QA'";
     
     try (Connection con = getConnection();
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery(sql)) {
         if (rs.next()) {
             count = rs.getInt("count");
         }
     } catch (Exception e) {
         e.printStackTrace();
     }
     
     return count;
 }
//=============================================================================================================================
 // 상세글 보기 
 public BoardDTO getBoardById(String id) {
     BoardDTO dto = null;
     String sql = "SELECT * FROM board WHERE id = ?";
     
     try (Connection con = getConnection();
          PreparedStatement pstmt = con.prepareStatement(sql)) {
         pstmt.setString(1, id);
         ResultSet rs = pstmt.executeQuery();
         
         if (rs.next()) {
             dto = new BoardDTO(
                     rs.getString("id"),
                     rs.getString("author"),
                     rs.getString("title"),
                     rs.getString("detail"),
                     rs.getString("date")
             );
         }
     } catch (Exception e) {
         e.printStackTrace();
     }
     return dto;
 }
 }
//=============================================================================================================================
//public ArrayList<BoardDTO> list() {
//   ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
//   String sql = "SELECT * FROM board";
//   
//   try (Connection con = getConnection();
//        Statement stmt = con.createStatement();
//        ResultSet rs = stmt.executeQuery(sql)) {
//       while (rs.next()) {
//           BoardDTO dto = new BoardDTO(
//                   rs.getString("id"),
//                   rs.getString("author"),
//                   rs.getString("title"),
//                   rs.getString("detail"),
//                   rs.getString("date")
//           );
//           dtos.add(dto);
//       }
//   } catch (Exception e) {
//       e.printStackTrace();
//   }
//   
//   return dtos;
//}
//-----------------------------------------------------------------------------------------------------------------------------
//     // 검색
//     public MemberDTO selectOne(String id) {
//         MemberDTO dto = null;
//         String sql = "SELECT * FROM users WHERE id = ?";
//         
//         try (Connection con = getConnection();
//              PreparedStatement pstmt = con.prepareStatement(sql)) {
//             pstmt.setString(1, id);
//             ResultSet rs = pstmt.executeQuery();
//             
//             if (rs.next()) {
//                 dto = new MemberDTO(id, rs.getString("email"), rs.getString("username"), rs.getString("password"));
//             }
//         } catch (Exception e) {
//             e.printStackTrace();
//         }
//         
//         return dto;
//     }
//  
// //-----------------------------------------------------------------------------------------------------------------------------
//     // 수정
//     public void boardUpdate(BoaradDTO dto) {
//         String sql = "UPDATE b SET email = ?, username = ?, password = ? WHERE id = ?";
//         
//         try (Connection con = getConnection();
//              PreparedStatement pstmt = con.prepareStatement(sql)) {
//                 pstmt.setString(1, dto.getEmail());
//             pstmt.setString(2, dto.getUser());
//             pstmt.setString(3, dto.getPwd());
//             pstmt.setString(4, dto.getId());
//             
//             pstmt.executeUpdate();
//         } catch (Exception e) {
//             e.printStackTrace();
//         }
//     }
// //----------------------------------------------------------------------------------------------------------------------------- 
//     // 삭제
//     public void delete(String id) {
//         String sql = "DELETE FROM users WHERE id = ?";
//         
//         try (Connection con = getConnection();
//              PreparedStatement pstmt = con.prepareStatement(sql)) {
//             pstmt.setString(1, id);
//             pstmt.executeUpdate();
//         } catch (Exception e) {
//             e.printStackTrace();
//         }
//     }
// //-----------------------------------------------------------------------------------------------------------------------------   