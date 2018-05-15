package com.shose.JUnit;

import org.junit.Test;

import com.shose.DAO.MemberDAO;
import com.shose.DTO.MemberDTO;

public class LoginTest {

	@Test
	public void test() {

	
		String mid="chakim6";
		String mpw = "1111";
		
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO(mid, mpw);
		int flag = mDao.memLogin(mDto);
		
		if(flag ==1) {
			System.out.println("환영합니다.");
		}else {
			
			System.out.println("아이디 및 비밀번호가 틀렸습니다.");
		}
	}

}
