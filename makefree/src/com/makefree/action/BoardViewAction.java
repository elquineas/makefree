package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;

public class BoardViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/view.jsp";
		
		String bno = request.getParameter("bno");
		System.out.println("bno : " + bno);
		BoardDAO bDao = BoardDAO.getInstance();
		HttpSession session = request.getSession();
		
		// 조회수 증가(+1)
		bDao.viewCnt(session, bno);
				
		// 게시글 1건(상세 조회)
		BoardDTO bDto = bDao.view(bno);
		System.out.println(bDto.toString());
		
		
		
		request.setAttribute("one", bDto); 
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
