package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shose.DAO.BoardDAO;
import com.shose.DTO.BoardDTO;

public class BoardInsertViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String url = "board/register.jsp";
		
		
		
		
		
		
	
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return forward;
	}

}
