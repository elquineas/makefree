package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;
import com.makefree.dto.ReplyDTO;

import sun.security.jca.GetInstance;

public class GoodAddAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bno = request.getParameter("bno");
		String id = request.getParameter("id");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		int result = bDao.goodAdd(bno, id);

		if(result >0) {
			System.out.println("성공");
			
		}else {
			System.out.println("실패");
		}
		
		return null;
	}

}
