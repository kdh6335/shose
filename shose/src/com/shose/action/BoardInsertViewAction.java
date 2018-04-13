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
		
		
		
		String url = "newboard.jsp";
		
		String id = request.getParameter("hidden_id");
		
		System.out.println(id);
		
		request.setAttribute("id", id);
		
		
		
		
	
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return forward;
	}

}
