package com.shose.action;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

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
		String url = null;
		
		System.out.println("ID = " + mid + " , " + "PW = "+ mpw);
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(mid, mpw);
		
		int flag  = mDao.memLogin(mDto);
		
		if(flag==1) {
			
			
				mDto = mDao.sessionLogin(mDto);
				
				
				
				System.out.println("mDto " + mDto.getMname() + " , " + mDto.getMid());
				
				if(mDto != null) {
					
				session.removeAttribute("loginUser"); // 세션초기화
				session.setAttribute("loginUser", mDto); //세션 값 담기
				
				JSONObject jjb = new JSONObject();
				
				
				
				jjb.put("flag", flag);
				jjb.put("id2", mid);
				jjb.put("pw", mpw);
				
				response.setContentType("application/x-json; charset=UTF-8");
				response.getWriter().println(jjb);
				
				}
		}else {
			
				JSONObject jjb = new JSONObject();
				
				
				
				jjb.put("flag", flag);
				jjb.put("id2", mid);
				jjb.put("pw", mpw);
				
				
				response.setContentType("application/x-json; charset=UTF-8");
				response.getWriter().println(jjb);
		}
	
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return null;
	}

}
