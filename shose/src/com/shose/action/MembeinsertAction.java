package com.shose.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.MemberDAO;
import com.shose.DTO.MemberDTO;

public class MembeinsertAction  implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse respnse)
			throws ServletException, IOException {
		
		String url = null;
		
		String mid = request.getParameter("mb_id");
		String mpw = request.getParameter("mb_password");
		String mname = request.getParameter("mb_name");
		String memail = request.getParameter("mb_email");
		String mphone = request.getParameter("mb_hp");
		String memail2 = request.getParameter("mb_email2");
		
		String totalemail = memail +  "@" + memail2;
		
		System.out.println(mid + mpw + mname + mphone + totalemail);
		
		MemberDAO mDAO = new MemberDAO();
		MemberDTO mDto = new MemberDTO(mid, mpw, mname, mphone, totalemail);
		int result = mDAO.memIsert(mDto);
		
		if( result > 0 ) { // 회원등록 성공
			
			url = "index.bizpoll";
			
		} else {
			
			url = "member.bizpoll";
			
		}
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		return forward;
	}

}
