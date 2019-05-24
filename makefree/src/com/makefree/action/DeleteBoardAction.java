package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;

public class DeleteBoardAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.makefree";
		
		String bno = request.getParameter("bno");
			
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.deleteBoard(bno);	
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
