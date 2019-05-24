package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;

public class InsertBoardAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.makefree";
		
		String writer = request.getParameter("user_name");
		String content = request.getParameter("boardInsert");
		String title = request.getParameter("title_name");
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = new BoardDTO(title, content, writer);
		System.out.println(bDto.toString());
		
		bDao.insertBoard(bDto);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
