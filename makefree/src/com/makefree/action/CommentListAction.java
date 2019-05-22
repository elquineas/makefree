package com.makefree.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.ReplyDAO;
import com.makefree.dto.ReplyDTO;

public class CommentListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/commentlist.jsp";
		
		String bno = request.getParameter("bno");
		System.out.println("게시글 번호: " + bno);
		// 해당 게시글의 댓글 목록을 조회
		ReplyDAO rDao = ReplyDAO.getInstance();
		List<ReplyDTO> list = rDao.replyList(bno);
		
		request.setAttribute("replyList", list);
		
		//jsp파일 자체를 통으로 보내는것
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
