package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;
import com.shose.DTO.BoardDTO;
import com.shose.DTO.NextPreDTO;

public class BoardBodyAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<BoardDTO> list = null;
		List<NextPreDTO> list2 = null;
		String url = "substance.jsp";
		
		String bno = request.getParameter("bno");
		
		System.out.println("bno : " + bno);
		
		
		int num =  Integer.parseInt(bno);
		
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		list = bDao.bodylist(num);
		bDao.bodylistRead(num);
		list2 = bDao.bodyNextBody(num);
		
		request.setAttribute("bodylist", list);
		request.setAttribute("bodynext", list2);
		
		
		//등록된 게시글을 본문에 출력하기
		
		
		
	
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return forward;
	}

}
