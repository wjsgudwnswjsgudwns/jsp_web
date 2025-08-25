package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.BoardDto;
import dto.ContactDto;
import dto.MemberDto;

public class ContactDao {
	
	//DB에 커넥션 준비
	private String driverName = "com.mysql.jdbc.Driver"; // MySQL JDBC 드라이버 이름
	private String url = "jdbc:mysql://localhost:3306/jspweb"; // MySQL이 설치된 서버의 주소(ip)와 연결할 DB(스키마) 이름
	private String username ="root";
	private String password = "12345";
	
	Connection conn = null; // 커넥션 인터페이스를 선언 후 null로 초기화
	PreparedStatement pstmt = null; // SQL 실행문 객체
	ResultSet rs = null;
	ContactDto contactDto = null;
	
	public ContactDto contactInfo(String mid, String mname, String memail, String  mphone, String cdate, String ctime, String ccontent) {
		
		String sql = "INSERT INTO contact(memberid, membername, memberemail, memberphone, contact_date, contact_time, contact_content) "
					+ "VALUES(?,?,?,?,?,?,?)";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, mid);
			pstmt.setString(2, mname);
			pstmt.setString(3, memail);
			pstmt.setString(4, mphone);
			pstmt.setString(5, cdate);
			pstmt.setString(6, ctime);
			pstmt.setString(7, ccontent);
			
			pstmt.executeUpdate(); //
			
			while(rs.next()) {
				String memberid = rs.getString("memberid");
				String membername = rs.getString("membername");
				String memberemail = rs.getString("memberemail");
				String memberphone = rs.getString("memberphone");
				String contact_date = rs.getString("contact_date");
				String contact_time = rs.getString("contact_time");
				String contact_content = rs.getString("contact_content");
				
				MemberDto memberDto = new MemberDto();
				memberDto.setMemberid(memberid);
				memberDto.setMembername(membername);
				memberDto.setMemberemail(memberemail);
				memberDto.setMemberphone(memberphone);
				
				contactDto = new ContactDto(contact_date, contact_time, contact_content, ctime, memberDto);
				
			}
			
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
		
		return contactDto;
		
	}
	
	public ContactDto contactView(String mid) {
		String sql = "SELECT memberid, membername, memberemail, memberphone, contact_date, contact_time, contact_content "
				+ "FROM contact "
				+ "WHERE memberid = ? AND contact_date >= CURDATE()";
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, mid);
			
			rs = pstmt.executeQuery(); //
			
			while(rs.next()) {
				String memberid = rs.getString("memberid");
				String membername = rs.getString("membername");
				String memberemail = rs.getString("memberemail");
				String memberphone = rs.getString("memberphone");
				String contact_date = rs.getString("contact_date");
				String contact_time = rs.getString("contact_time");
				String contact_content = rs.getString("contact_content");
				
				MemberDto memberDto = new MemberDto();
				memberDto.setMemberid(memberid);
				memberDto.setMembername(membername);
				memberDto.setMemberemail(memberemail);
				memberDto.setMemberphone(memberphone);
				
				contactDto = new ContactDto(contact_date, contact_time, contact_content, contact_time, memberDto);
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
		return contactDto;
	}
	
	public void deleteContact(String memberid) {
		String sql = "DELETE FROM contact WHERE memberid = ?";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, memberid);
			
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
		
	public void updateContent(String mid, String mname, String memail, String  mphone, String cdate, String ctime, String ccontent) {
		String sql = "UPDATE contact "
				+ "SET membername = ?, memberemail = ?, memberphone = ?, contact_date = ?, contact_time = ?, contact_content=? "
				+ "WHERE memberid = ?";
		
		try {
			Class.forName(driverName); // MySQL 드라이버 클래스 불러오기
			
			conn = DriverManager.getConnection(url, username, password); // 커넥션이 메모리에 생성(DB와 연결 커넥션 conn 생성)
			
			pstmt = conn.prepareStatement(sql); // pstmt 인스턴스화
			
			pstmt.setString(1, mname);
			pstmt.setString(2, memail);
			pstmt.setString(3, mphone);
			pstmt.setString(4, cdate);
			pstmt.setString(5, ctime);
			pstmt.setString(6, ccontent);
			pstmt.setString(7, mid);
			
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
