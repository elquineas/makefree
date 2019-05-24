package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.BoardDAO;
import com.makefree.dao.ReplyDAO;
import com.makefree.dto.BoardDTO;
import com.makefree.dto.ReplyDTO;

public class ReplyAddAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("re_bno"));
		String writer = request.getParameter("re_writer");
		String content = request.getParameter("re_textarea");
		

		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
		System.out.println(rDto.toString());
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		int result = rDao.replyAdd(rDto);
		
		if(result > 0) {
			System.out.println("성공");
			/* bDao.replyCntAdd(bno); */
			String flag="plus";
			bDao.replyCntUpdate(bno, flag);
			
		} else {
			System.out.println("실패");
		}
		
		return null;
	}

}
