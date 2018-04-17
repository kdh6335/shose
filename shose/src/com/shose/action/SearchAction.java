package com.shose.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.BoardDAO;
import com.shose.DAO.SearchDAO;
import com.shose.DTO.BoardDTO;
import com.shose.DTO.CriteriaDTO;
import com.shose.DTO.PageMakerDTO;

public class SearchAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<BoardDTO> list = null;
		SearchDAO sDao = SearchDAO.getInstance();
		//String url = "boardbody.bizpoll";
		
		String select = request.getParameter("sfl");
		String search = request.getParameter("stx");
		
		System.out.println(select + " , " + search);
		
		
		
		String url = "Fboardlist.jsp";
		
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("페이지 번호" + page);
		criDto.setPage(page);
		
		if(select.equals("제목")){
			
			criDto.setSearch(search);
			list = sDao.searchTitle(criDto); // = list (게시글 목록)
		
		}else if(select.equals("내용")) {
			
			criDto.setSearch(search);
			list = sDao.searchContent(criDto); // = list (게시글 목록)
			
		}else if(select.equals("제목+내용")) {
			
			criDto.setSearch(search);
			list = sDao.searchTitleContent(criDto); // = list (게시글 목록)
			
		}else if(select.equals("아이디")) {
			
			criDto.setSearch(search);
			list = sDao.searchWriter(criDto); // = list (게시글 목록)
			
		}
		
		BoardDAO bDao = BoardDAO.getInstance();
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
