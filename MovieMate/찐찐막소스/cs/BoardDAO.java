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
   // 검색(미완)
   public BoardDTO selectOne(String title) {
       BoardDTO dto = null;
       String sql = "SELECT * FROM nboard WHERE title = ?";
       
       try (Connection con = getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql)) {
           pstmt.setString(1, title);
           ResultSet rs = pstmt.executeQuery();
           
           if (rs.next()) {
               dto = new BoardDTO(rs.getString("id"), rs.getString("auth"), title, rs.getString("detail"), rs.getString("date"));
           }
       } catch (Exception e) {
           e.printStackTrace();
       }
       
       return dto;
   }
//=============================================================================================================================
  // 공지사항 페이지 글 작성
     public void noticeInsert(BoardDTO dto) {
         String sql = "INSERT INTO nboard(author, title, detail) VALUES(?, ?, ?)";
         
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
     // 공지사항 페이지 글 수정
     public void nboardUpdate(BoardDTO dto) {
         String sql = "UPDATE nboard SET title = ?, detail = ? WHERE id = ?";
         
         try (Connection con = getConnection();
              PreparedStatement pstmt = con.prepareStatement(sql)) {
                 pstmt.setString(1, dto.getTitle());
             pstmt.setString(2, dto.getDetail());
             pstmt.setString(3, dto.getId());
             
             pstmt.executeUpdate();
         } catch (Exception e) {
             e.printStackTrace();
         }
     }
//-----------------------------------------------------------------------------------------------------------------------------    
   // 공지사항 페이지 글 삭제
   public void nboardDelete(String id) {
       String sql = "DELETE FROM nboard WHERE id = ?";
       
       try (Connection con = getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql)) {
           pstmt.setString(1, id);
           pstmt.executeUpdate();
       } catch (Exception e) {
           e.printStackTrace();
       }
   }
//-----------------------------------------------------------------------------------------------------------------------------
     // 공지사항 게시판 리스트 + 페이징 
     public ArrayList<BoardDTO> noticeList(int p, int numOfRecords) {
         ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
         String sql = "SELECT id, author, title, detail, date FROM nboard ORDER BY id DESC LIMIT ?, ?";
         
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
         String sql = "SELECT COUNT(id) AS count FROM nboard";
         
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
//-----------------------------------------------------------------------------------------------------------------------------      
     // 공지 사항 상세글 보기 
     public BoardDTO getnBoardById(String id) {
         BoardDTO dto = null;
         String sql = "SELECT * FROM nboard WHERE id = ?";
         
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
//=============================================================================================================================
     // Q&A 게시판 리스트 + 페이징
     public ArrayList<BoardDTO> QAList(int p, int numOfRecords) {
         ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
         String sql = "SELECT id, author, title, detail, date FROM qaboard ORDER BY id DESC LIMIT ?, ?";
         
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
         String sql = "INSERT INTO qaboard(author, title, detail) VALUES(?, ?, ?)";
         
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
     String sql = "SELECT COUNT(id) AS count FROM qaboard";
     
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
//---------------------------------------------------------------------------------------------------------------------------------
 // 공지 사항 상세글 보기 
 public BoardDTO getqaBoardById(String id) {
     BoardDTO dto = null;
     String sql = "SELECT * FROM qaboard WHERE id = ?";
     
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
//=============================================================================================================================
 }
//=============================================================================================================================