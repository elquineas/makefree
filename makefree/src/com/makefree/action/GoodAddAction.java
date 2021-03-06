package com.makefree.action;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;
import com.makefree.dto.ReplyDTO;

import sun.security.jca.GetInstance;

public class GoodAddAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
				
		String bno = request.getParameter("bno");
		String id = request.getParameter("id");
		
		HashMap<String, String> map = new HashMap<String, String>();

		
		BoardDAO bDao = BoardDAO.getInstance();
		int check = bDao.goodCheck(bno, id);
		System.out.println(check);
		int result = 0;
		
		
		if(check > 0) {
			bDao.goodDel(bno, id);
		} else {
			bDao.goodAdd(bno, id);
		}
		
		int goodcnt = bDao.goodCheckAll(Integer.parseInt(bno));
		
		map.put("bno", bno);
		map.put("id", id);
		map.put("goodcnt", goodcnt+"");
		
		bDao.goodCntpm(map);

		
		JSONObject jObj = new JSONObject();
		jObj.put("check", check);
		jObj.put("goodcnt", goodcnt);
		response.setContentType("application/x-json); charset=UTF-8");
		response.getWriter().print(jObj);
		
		return null;
	}

}
