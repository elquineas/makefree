package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.makefree.dao.BoardDAO;

public class Good_CheckAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bno = request.getParameter("bno");
		String id = request.getParameter("id");
		
		BoardDAO bDao = BoardDAO.getInstance();
		int check = bDao.goodCheck(bno, id);
		
		JSONObject jObj = new JSONObject();
		jObj.put("check", check);
		response.setContentType("application/x-json); charset=UTF-8");
		response.getWriter().print(jObj);
		
		return null;
	}

}
