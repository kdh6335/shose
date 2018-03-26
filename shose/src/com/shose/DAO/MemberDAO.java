package com.shose.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
			String sql = "SELECT mid FROM member WHERE mid = ? ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberid);
			
			rs = pstmt.executeQuery();
			
			String mid = null;
			while(rs.next()) {
				mid = rs.getString("mid");
			}
			
			if(mid != null) {
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
}
