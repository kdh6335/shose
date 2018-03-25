package com.shose.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shose.DAO.ProductDAO;
import com.shose.DTO.ProductDTO;

public class IndexAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse respnse)
			throws ServletException, IOException {
		
		String url = "index.jsp";
		
		
		ProductDAO pDao = new ProductDAO();
		
		ArrayList<ProductDTO> newProductlist = new ArrayList<>();

		newProductlist = pDao.imagelist();
		
		request.setAttribute("newProductlist", newProductlist);
	
		
		ArrayList<ProductDTO> newProductlist2 = new ArrayList<>();
		
		newProductlist2 = pDao.bestlist();
		
		request.setAttribute("newProductlist2", newProductlist2);
		
		
		ActionForward forward = new ActionForward();
		
		forward.setPath(url);
		forward.setRedirect(false); 
		
		return forward;
	}
	
}
