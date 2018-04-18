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
		
			String url = "board/Fboardlist.jsp";
			
			
			CriteriaDTO criDto = new CriteriaDTO();
			int page = 1;
			if(request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			
			System.out.println("페이지 번호" + page);
			
			
			String search = "";
			String select = "";
			criDto.setSelect(select);
			criDto.setSearch(search);
			criDto.setPage(page);
			BoardDAO bDao = BoardDAO.getInstance();
			List<BoardDTO> list = null;
			list = bDao.listAll(criDto); // = list (게시글 목록)
			
			
			
			request.setAttribute("boardlist", list);
			
			PageMakerDTO pageMaker = new PageMakerDTO();
			
			
			pageMaker.setCriDto(criDto);
			pageMaker.setTotalCount(bDao.totalCount(criDto)); // 게시글 전체 갯수를 찾아준다.
			
			String flag = "0";
			
			request.setAttribute("pageMaker", pageMaker);
			request.setAttribute("flag", flag);
			
			
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}

}
