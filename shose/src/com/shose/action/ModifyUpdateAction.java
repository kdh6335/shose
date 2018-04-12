package com.shose.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;
import com.shose.DTO.BoardDTO;

public class ModifyUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = null; 
		
		String bno = request.getParameter("bno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		int num = Integer.parseInt(bno);
		
		System.out.println(bno + " , " + title + " , " + content + " , " + writer);
		
		BoardDTO bDto = new BoardDTO(num, title, content, writer);
		
		BoardDAO bDAO = BoardDAO.getInstance();
		
		int ruselt = bDAO.modifUpdate(bDto);
		
		if(ruselt >0) {
			
			System.out.println("수정 성공");
			url = "boardbody.bizpoll";
		}else {
			System.out.println("수정 실패");
			url = "modify.bizpoll";
		}
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		
		
		return forward;
	}

}
