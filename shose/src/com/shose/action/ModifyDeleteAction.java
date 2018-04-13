package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;
import com.shose.DTO.BoardDTO;

public class ModifyDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = null; //"boardlist.bizpoll";
		
		String bno = request.getParameter("hidden");
		Integer num = Integer.parseInt(bno);
		
		System.out.println(num);
		
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.modifDelete(num);
		
		if (result > 0) {
			
			System.out.println("삭제 성공");
			url = "boardlist.bizpoll";
			
		}else {
			
			System.out.println("삭제 실패");
			url = "boardbody.bizpoll";
			
		}
		
	
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return forward;
		
	}

}
