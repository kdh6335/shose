package com.shose.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.shose.DAO.MemberDAO;
import com.shose.DTO.MemberDTO;

public class LoginCkAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String mid = request.getParameter("id2");
		String mpw = request.getParameter("pw");
		
		System.out.println("ID = " + mid + " , " + "PW = "+ mpw);
		
		
		MemberDAO mDao = new MemberDAO();
		int flag  = mDao.memLogin(mid, mpw);
		
		MemberDTO mDto = mDao.sessionLogin(mid, mpw);
		
		
		if(mDto != null) {
			
			session.removeAttribute("loginUsr"); // 세션초기화(혹시 모'르 남아있는 값)
			session.setAttribute("loginUser", mDto); //세션 값 담기
			
			}
		
		
		
		JSONObject jjb = new JSONObject();
		
		jjb.put("flag", flag);
		jjb.put("id2", mid);
		jjb.put("pw", mpw);
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jjb);
		
		//ActionForward forward = new ActionForward();
		
		//forward.setPath(url);
		//forward.setRedirect(false); 
		
		return null;
	}

}
