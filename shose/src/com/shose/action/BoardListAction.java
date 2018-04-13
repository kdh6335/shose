package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;
import com.shose.DTO.BoardDTO;
import com.shose.DTO.CriteriaDTO;
import com.shose.DTO.PageMakerDTO;

public class BoardListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			String url = "Fboardlist.jsp";
			
			
			CriteriaDTO criDto = new CriteriaDTO();
			int page = 1;
			if(request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			
			System.out.println("페이지 번호" + page);
			criDto.setPage(page);
			BoardDAO bDao = BoardDAO.getInstance();
			List<BoardDTO> list = null;
			list = bDao.listAll(criDto); // = list (게시글 목록)
			
			
			
			request.setAttribute("boardlist", list);
			
			PageMakerDTO pageMaker = new PageMakerDTO();
			pageMaker.setCriDto(criDto);
			pageMaker.setTotalCount(bDao.totalCount(criDto));
			
			request.setAttribute("pageMaker", pageMaker);
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}
