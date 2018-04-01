package com.shose.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.shose.DTO.MemberDTO;
import com.shose.common.DBManager;


public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result, flag;

	
	// ID 중복 체크
	
	public int memIdCheck(String memberid) {
		
		try {
			
			conn = DBManager.getConnection();
			
			String sql = "SELECT * FROM member WHERE mid = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberid);
			
			rs = pstmt.executeQuery();
			
			System.out.println("mid333333 = " + memberid);
			
			
			String mid = null;
			
				while(rs.next()) {
					
					mid = rs.getString("mid");
					
					
				}
				
			System.out.println("데이터 아이디 " + mid);
		
			
			if(rs.next() == true) {
				
				System.out.println("중복된 ID 입니다.");
				flag = 0;
				
			}else {
				System.out.println("사용가능한 ID 입니다.");
				flag = 1;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			DBManager.close(conn, pstmt, rs);
			
		}
		return flag;
	}
	//아이디 체크
	public int memLogin(String memberid, String mempw) {
		
		
		
		try {
			
			conn = DBManager.getConnection();
			
			String sql = "SELECT * FROM member WHERE mid = ? AND mpw = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberid);
			pstmt.setString(2, mempw);
			
			rs = pstmt.executeQuery();
			
			if (rs.next() == false) {
				
				flag = 0;
				
			}else {
				
				flag = 1;
			}
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			DBManager.close(conn, pstmt, rs);
			
		}
		return flag;
	}
	//회원 등록
	
	public int memIsert(MemberDTO mDto) {
		
		try {
			
			conn = DBManager.getConnection();
			String sql = "INSERT INTO member (mid, mpw, mname, mphone, memail) VALUES ( ?, ?, ?, ?, ?) ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mDto.getMid());
			pstmt.setString(2, mDto.getMpw());
			pstmt.setString(3, mDto.getMname());
			pstmt.setString(4, mDto.getMphone());
			pstmt.setString(5, mDto.getMemail());
			
			result = pstmt.executeUpdate();
			
			if(result > 0 ) {
				
				System.out.println("등록 성공");
				
			} else {
				
				System.out.println("등록 실패");
			
			}
			
					
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	
	
	
	
public MemberDTO sessionLogin(String memberid, String mempw) {
		
		MemberDTO mDto = null;
		
		try {
			
			conn = DBManager.getConnection();
			
			String sql = "SELECT * FROM member WHERE mid = ? AND mpw = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberid);
			pstmt.setString(2, mempw);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String id = rs.getString("mid");
				String pw = rs.getString("mpw");
				String mname = rs.getString("mname");
				String mphone = rs.getString("mphone") ;
				String mjuso = rs.getString("mjuso");
				String memail = rs.getString("memail");
				String mbirth = rs.getString("mbirth");
				String mmen = rs.getString("mmen");
			    Date regdate = rs.getDate("regdate");
			    
			    mDto = new MemberDTO(id, pw, mname, mphone, mjuso, memail, mbirth, mmen, regdate);
				
			}
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			
			DBManager.close(conn, pstmt, rs);
			
		}
		return mDto;
	}
}
