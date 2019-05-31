package com.makefree.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.ProductDAO;
import com.makefree.dto.ProductDTO;

public class DetailAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "detail.jsp";
		
		String p_code = request.getParameter("p_code");
		ProductDAO pDao = ProductDAO.getInstance();
		ProductDTO pDto = new ProductDTO();
		pDto = pDao.detail(p_code);
		List<ProductDTO> pList = pDao.recipeList(p_code);

		System.out.println("액션에서DTO : "+pDto.toString());

		request.setAttribute("pDto", pDto);
		request.setAttribute("pList", pList);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
