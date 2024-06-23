package cs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
 
 public class MovieDAO {
     
     // 데이터베이스 연결을 위한 커넥션 객체를 반환하는 메서드
     private Connection getConnection() throws Exception {
         Connection con = null;
         
         Context initCtx = new InitialContext(); // JNDI 초기 컨텍스트 가져오기
         Context envCtx = (Context) initCtx.lookup("java:comp/env"); // 환경 컨텍스트로 이동
         DataSource ds = (DataSource) envCtx.lookup("jdbc/jsw"); // 데이터 소스 객체를 찾기
         
         con = ds.getConnection(); // 데이터 소스에서 커넥션 객체 가져오기
         
         return con; // 커넥션 객체 반환
     }
     
     // PboardDTO 객체를 받아서 데이터베이스에 저장하는 메서드
     public void insert(MovieDTO dto) {
         String sql = "INSERT INTO movies(title, summary, release_date, rating, genre, country, runtime, filename) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
         
         try (Connection con = getConnection();
              PreparedStatement pstmt = con.prepareStatement(sql)) {
             pstmt.setString(1, dto.getTitle());
             pstmt.setString(2, dto.getSummary());
             pstmt.setString(3, dto.getRelease_date());
             pstmt.setInt(4, dto.getRating());
             pstmt.setString(5, dto.getGenre());
             pstmt.setString(6, dto.getCountry());
             pstmt.setString(7, dto.getRuntime());
             pstmt.setString(8, dto.getFilename());
             
             pstmt.executeUpdate(); // 쿼리 실행하여 데이터베이스에 삽입
         } catch (Exception e) {
             e.printStackTrace();
         }
     }
     
 }