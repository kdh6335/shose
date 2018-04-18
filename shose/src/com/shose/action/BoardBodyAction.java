package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;
import com.shose.DAO.ReplyDAO;
import com.shose.DTO.BoardDTO;
import com.shose.DTO.NextPreDTO;
import com.shose.DTO.ReplyDTO;

public class BoardBodyAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<BoardDTO> list = null;
		List<NextPreDTO> list2 = null;
		String url = "board/substance.jsp";
		
		String bno = request.getParameter("bno");
		
		System.out.println("bno : " + bno);
		
		
		int num =  Integer.parseInt(bno);
		
		
		//등록된 게시글을 본문에 출력하기
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.bodylistRead(num);
		list = bDao.bodylist(num);
		list2 = bDao.bodyNextBody(num);
		
		request.setAttribute("bodylist", list);
		request.setAttribute("bodynext", list2);
		
		
		
		
		//상세페이지 댓글 출력하기
		
		List<ReplyDTO> list3 = null;
		ReplyDAO rDao = ReplyDAO.getInstance();
		int count = rDao.replyCount(num);
		list3 = rDao.replyList(num);
		request.setAttribute("replylist", list3);
		request.setAttribute("count", count);
		
		
		// 상세페이지에서 댓글 갯수 구하기
		BoardDTO bDto = new BoardDTO(num, count);
		bDao.countUpdate(bDto);
		
		
	
		ActionForward forward = new ActionForward();
	
		forward.setPath(url);
		forward.setRedirect(false); 
	
		return forward;
	}

}
