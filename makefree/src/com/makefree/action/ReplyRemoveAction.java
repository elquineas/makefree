package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.BoardDAO;
import com.makefree.dao.ReplyDAO;

public class ReplyRemoveAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int rno = Integer.parseInt(request.getParameter("rno"));
		int bno = Integer.parseInt(request.getParameter("bno"));
		ReplyDAO rDao = ReplyDAO.getInstance();
		BoardDAO bDao = BoardDAO.getInstance();

		int result = rDao.replyRemove(rno);
		
		if(result == 1) {
			System.out.println("성공");
			/* bDao.replyCntMinus(bno); */
			String flag="minus";
			bDao.replyCntUpdate(bno, flag);

		}
		
		return null;
	}

}
