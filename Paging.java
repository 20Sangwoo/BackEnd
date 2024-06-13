/**===================
 * 작성자 : Ksm
 * 작성일 : 2024. 5. 28.
 * 메소드 : 
 * 			-getCount():전체 레코드의 갯수
	  	    -list(p, numOfRecords) : 현재 페이지 레코드를 가져오는 기능

 ===================*/
package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Paging {
	
	private Connection getConnection() throws Exception{
		//커넥션 풀을 사용하여 db와 연동
		  Connection con = null;
		  Context initCtx = new InitialContext(); 
		  Context ctx = (Context)initCtx.lookup("java:comp/env"); 
		  DataSource ds = (DataSource)ctx.lookup("jdbc/jskim");
		  con = ds.getConnection();
		  return con;
	}
	public int getCount() {
		int count = 0;
		String sql = "select count(id) count from login";
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
	public ArrayList<MemberDTO> list(int p, int numOfRecords){
		
		 ArrayList<MemberDTO> dtos = new  ArrayList<MemberDTO>();
		 String sql = "SELECT * FROM login ORDER BY id ASC LIMIT ?, ?;"; //sql문
		 
		  //커넥션 가져오기
		    try (Connection con = getConnection();  
		    	 PreparedStatement pstmt = con.prepareStatement(sql))
		    {
		    	 pstmt.setInt(1,(p-1)*numOfRecords);            
		    	 pstmt.setInt(2,numOfRecords);
		        
		    	 ResultSet rs = pstmt.executeQuery();
		        while (rs.next()) {
		        	//방법1 
		            //String id = rs.getString("id");
		            //String name = rs.getString("name");
		            //String pwd = rs.getString("pwd");
		            
		            //MemberDTO dto = new MemberDTO(id, name, pwd);
		            //dtos.add(dto);
		            
		        	//방법2
		            MemberDTO dto = new MemberDTO();
		            dto.setId(rs.getString("id"));
		            dto.setPwd(rs.getString("name"));
		            dto.setName(rs.getString("pwd"));
		            
		            //방법3
		            //MemberDTO dto = new MemberDTO(
		            		//rs.getString("id"),
		            		//rs.getString("pwd")
		            		//rs.getString("name"));
		            
		            
		            dtos.add(dto);
		        }
		        
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    
		 //결과리스트를 리턴하기 
		 
		 return dtos;
		 
		 
	}
 }
