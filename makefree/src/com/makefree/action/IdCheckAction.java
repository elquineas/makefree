package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.makefree.dao.MemberDAO;

public class IdCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
//		System.out.println("id>>>" + id);
		
		MemberDAO mDao = MemberDAO.getInstance();
		String result = mDao.idCheck(id);
		
		//Ajax => JSON방식 => return 할때 보내는 값도 JSON방식
		JSONObject jObj = new JSONObject();
		jObj.put("message", result);
		jObj.put("id", id);
		
		//JSON 객체에 담은 데이터를 호출한 페이지로 전송하는 기능
		response.setContentType("application/x-json); charset=UIF-8");
		response.getWriter().print(jObj);
		
		// AJAX방식은 목적지가 자기 자신임으로 
		// forward(목적지, 이동수단)을 return할 필요가 없음
 		return null;
	}

}
