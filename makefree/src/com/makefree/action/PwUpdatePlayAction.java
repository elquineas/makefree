package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.makefree.dao.MemberDAO;
import com.makefree.dto.MemberDTO;

public class PwUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.makefree";
			
		String pw = request.getParameter("input_npw");
		String id = request.getParameter("id");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.pwUpdate(id, pw);
		
		if(result > 0) {
			HttpSession session = request.getSession();
			MemberDTO mDto = mDao.memOne(id);
			
			session.removeAttribute("lofinUser");
			session.setAttribute("loginUser", mDto);
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
