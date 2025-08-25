package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.BoardDto;
import dto.MemberDto;

public class BoardDao {
	
	
	//DB에 커넥션 준비
	private String driverName = "com.mysql.jdbc.Driver"; // MySQL JDBC 드라이버 이름
	private String url = "jdbc:mysql://localhost:3306/jspweb"; // MySQL이 설치된 서버의 주소(ip)와 연결할 DB(스키마) 이름
	private String username ="root";
	private String password = "12345";
	
	Connection conn = null; // 커넥션 인터페이스를 선언 후 null로 초기화
	PreparedStatement pstmt = null; // SQL 실행문 객체
	ResultSet rs = null;
	
	public static final int PAGE_SIZE = 10;
		
	public List<BoardDto> boardList(int page){
	
		// page 값의 해당하는 글 번호 계산
		int offset = (page - 1) * PAGE_SIZE;
		
		//String sql = "SELECT * FROM board ORDER BY bnum DESC";
		String sql = "SELECT ROW_NUMBER() OVER(ORDER BY bnum ASC) AS bno, "
				+ "b.bnum, b.btitle, b.bcontent ,b.memberid, m.memberemail, b.bdate, b.bhit "
				+ "FROM board b "
				+ "LEFT JOIN member m ON b.memberid = m.memberid "
				+ "ORDER BY bnum DESC "
				+ "LIMIT ? OFFSET ?";
		
		List<BoardDto> bDtos = new ArrayList<BoardDto>();
		//List<BoardMemberDto> bmDtos = new ArrayList<BoardMemberDto>(); 
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			pstmt.setInt(1, PAGE_SIZE);
			pstmt.setInt(2, offset);
			
			rs = pstmt.executeQuery(); //
			
			while(rs.next()) {
				int bnum = rs.getInt("bnum");
				String btitle = rs.getString("btitle");
				String bcontent = rs.getString("bcontent");
				String memberid = rs.getString("memberid");
				int bhit = rs.getInt("bhit");
				String bdate = rs.getString("bdate");
				
				int bno = rs.getInt("bno");
				
				BoardDto bDto = new BoardDto(bno, bnum, btitle, bcontent, memberid, bhit, bdate);
				bDtos.add(bDto);
				
				//BoardDto bmDto = new BoardDto(bnum, btitle, bcontent, memberid, memeberemail, bhit, bdate);
				//bmDtos.add(bmDto);
			}
			

		} catch (Exception e){
			System.out.println("DB 에러 발생. 로그인 실패.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(rs != null) { 
					rs.close();
				}
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return bDtos;
		
	}
	
	public List<BoardDto> searchBoardList(String searchKeyword, String searchType, int page) { // 게시판에서 검색
		// page 값의 해당하는 글 번호 계산
		int offset = (page - 1) * PAGE_SIZE;
		
		String sql = "SELECT ROW_NUMBER() OVER(ORDER BY bnum ASC) AS bno, "
				+ "b.bnum, b.btitle, b.bcontent ,b.memberid, m.memberemail, b.bdate, b.bhit "
				+ "FROM board b "
				+ "LEFT JOIN member m ON b.memberid = m.memberid "
				+ "WHERE " + searchType + " LIKE ? ORDER BY bnum "
				+ "DESC LIMIT ? OFFSET ?";
		
		List<BoardDto> bDtos = new ArrayList<BoardDto>();
		//List<BoardMemberDto> bmDtos = new ArrayList<BoardMemberDto>(); 
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			pstmt.setString(1, "%"+searchKeyword+"%");
			pstmt.setInt(2, PAGE_SIZE);
			pstmt.setInt(3, offset);
			
			rs = pstmt.executeQuery(); //
			
			while(rs.next()) {
				int bnum = rs.getInt("bnum");
				String btitle = rs.getString("btitle");
				String bcontent = rs.getString("bcontent");
				String memberid = rs.getString("memberid");
				int bhit = rs.getInt("bhit");
				String bdate = rs.getString("bdate");
				
				int bno = rs.getInt("bno");
				
				BoardDto bDto = new BoardDto(bno,bnum, btitle, bcontent, memberid, bhit, bdate);
				bDtos.add(bDto);
				
				//BoardDto bmDto = new BoardDto(bnum, btitle, bcontent, memberid, memeberemail, bhit, bdate);
				//bmDtos.add(bmDto);
			}
			

		} catch (Exception e){
			System.out.println("DB 에러 발생. 로그인 실패.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(rs != null) { 
					rs.close();
				}
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return bDtos;
	}
	
	
	public int countBoard() { // 게시판 모든 글의 갯수를 반환
		String sql = "SELECT * FROM board";
		
		int count = 0;
		
		try {
			Class.forName(driverName); //MySQL 드라이버 클래스 불러오기			
			conn = DriverManager.getConnection(url, username, password);
			//커넥션이 메모리 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); //pstmt 객체 생성(sql 삽입)			

			rs = pstmt.executeQuery(); //모든 글 리스트(모든 레코드) 반환
			
			while(rs.next()) {
				count++;
			}	
			
		} catch (Exception e) {
			System.out.println("DB 에러 발생!");
			e.printStackTrace(); //에러 내용 출력
		} finally { //에러의 발생여부와 상관 없이 Connection 닫기 실행 
			try {
				if(rs != null) { //rs가 null 이 아니면 닫기(pstmt 닫기 보다 먼저 실행)
					rs.close();
				}				
				if(pstmt != null) { //stmt가 null 이 아니면 닫기(conn 닫기 보다 먼저 실행)
					pstmt.close();
				}				
				if(conn != null) { //Connection이 null 이 아닐 때만 닫기
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		}
	return count;
	}
	
	
	public int countSearchBoard(String searchType, String searchKeyword) {
	    String sql = "SELECT COUNT(*) AS cnt "
	    			+ "FROM board b "
	               + "LEFT JOIN member m ON b.memberid = m.memberid "
	               + "WHERE " + searchType + " LIKE ?";
	    int count = 0;

	    try {
	        Class.forName(driverName);
	        conn = DriverManager.getConnection(url, username, password);
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, "%" + searchKeyword + "%");
	        rs = pstmt.executeQuery();

	        if(rs.next()) {
	            count = rs.getInt("cnt");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if(rs != null) rs.close();
	            if(pstmt != null) pstmt.close();
	            if(conn != null) conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    return count;
	}
	
	public void boardWrite(String btitle, String memberid, String bcontent) { // 게시판의 모든 글 리스트 가져오는 메소드
		
		String sql = "INSERT INTO board(btitle, memberid, bcontent, bhit) "
					+ "VALUES(?,?,?,0)";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, btitle);
			pstmt.setString(2, memberid);
			pstmt.setString(3, bcontent);
			
			pstmt.executeUpdate(); //
	
		} catch (Exception e){
			System.out.println("DB 에러 발생.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public BoardDto contentView(String bnum) { // 선택한 글 보기
		
		String sql = "SELECT b.bnum,b.btitle,b.memberid,b.bdate,b.bhit,b.bcontent "
				+ "FROM board b "
				+ "LEFT JOIN member m ON b.memberid = m.memberid "
				+ "WHERE b.bnum = ? "; 
		BoardDto boardDto = null;
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, bnum);
			
			rs = pstmt.executeQuery(); //
			
			while(rs.next()) {
				int bnum1 = rs.getInt("bnum");
				String btitle = rs.getString("btitle");
				String bcontent = rs.getString("bcontent");
				String memberid = rs.getString("memberid");
				int bhit = rs.getInt("bhit");
				String bdate = rs.getString("bdate");
				
				boardDto = new BoardDto(bnum1, btitle, bcontent, memberid, bhit, bdate);
				
			}
			

		} catch (Exception e){
			System.out.println("DB 에러 발생. 로그인 실패.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(rs != null) { 
					rs.close();
				}
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return boardDto;
	}
	
	public void updateBhit(String bnum) {
		String sql = "UPDATE board SET bhit = bhit + 1 WHERE bnum = ?";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
		
			pstmt.setString(1, bnum);
			
			pstmt.executeUpdate(); //
	
		} catch (Exception e){
			System.out.println("DB 에러 발생.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void updateContent(String btitle,String bcontent, String bnum) {
		String sql = "UPDATE board SET btitle=?,bcontent=? WHERE bnum = ?";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, btitle);
			pstmt.setString(2, bcontent);
			pstmt.setString(3, bnum);
			
			pstmt.executeUpdate(); //
	
		} catch (Exception e){
			System.out.println("DB 에러 발생.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void deleteContent(String bnum) {
		String sql = "DELETE FROM board WHERE bnum = ?";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, bnum);
			
			pstmt.executeUpdate(); //
	
		} catch (Exception e){
			System.out.println("DB 에러 발생.");
			e.printStackTrace();
		} finally { // 에러 발생여부와 상관없이 Connection 닫기 실행
			try {
				if(pstmt != null) { // pstmt가 null이 아니면 닫기. conn 닫기보다 먼저 실행 되어야만 함
					pstmt.close();
				}
				if (conn != null) { // Connection이 null이 아닐때만 닫기 실행
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
