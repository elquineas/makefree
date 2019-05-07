package com.makefree.action;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.ProductDAO;
import com.makefree.dto.ProductDTO;


public class IndexAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.jsp";
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> bList = pDao.bestList();
		List<ProductDTO> nList = pDao.newList();
		
		/*
		 * for (ProductDTO productDTO : bList) {
		 * System.out.println(productDTO.getP_img());
		 * System.out.println(productDTO.getP_name()); }
		 */
		for (ProductDTO productDTO : nList) {
			System.out.println(productDTO.getP_img());
			System.out.println(productDTO.getP_name());
		}
		
		request.setAttribute("bestList", bList);
		request.setAttribute("newList", nList);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
