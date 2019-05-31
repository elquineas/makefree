package com.makefree.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.ProductDAO;
import com.makefree.dto.ProductDTO;

public class DetailMenuAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "detailmenu.jsp";
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> nList = pDao.chickenList();
		List<ProductDTO> pList = pDao.pigList();
		List<ProductDTO> cList = pDao.cowList();

		
		request.setAttribute("chickenList", nList);
		request.setAttribute("pigList", pList);
		request.setAttribute("cowList", cList);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
