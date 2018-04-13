package com.shose.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;

public class SweetAddAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardbody.bizpoll";
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.bodySweetAdd(bno);
		
		
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}
