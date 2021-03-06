package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.makefree.dao.MemberDAO;
import com.makefree.dto.MemberDTO;

public class DropMemberPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.makefree";
		HttpSession session = request.getSession();
		
		MemberDTO mDto = (MemberDTO)session.getAttribute("loginUser");
		String id = mDto.getId();
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memDelete(id);
		
		if(result > 0) {
			session.invalidate();
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
}
