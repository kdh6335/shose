package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.MemberDAO;
import com.shose.DTO.MemberDTO;

public class PersonalAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/personaldata.jsp";
		
		String mid = request.getParameter("mid");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO list = mDao.personalSelect(mid);
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}
