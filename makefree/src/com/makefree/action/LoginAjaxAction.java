package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.makefree.dao.LoginDAO;
import com.makefree.dto.MemberDTO;

public class LoginAjaxAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Session을 사용하기 위해 session 객체 생성
		HttpSession session = request.getSession();
		//WAS를 활용하여 Web에서 사용하는 공용저장소
		//sql마이바티스에 있는 session은 마이바티스에서 일할 일꾼을 생성하는 개념
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id + "," + pw);
		
		LoginDAO lDao = LoginDAO.getInstance();
		MemberDTO mDto = lDao.loginCheck(id, pw);
		String message = "";
		
		if(mDto != null) { //로그인 성공
			System.out.println(mDto.toString());
			//Session에 Login된 회원 정보를 담음
			//세션에서 LoginUser정보를 삭제
			//혹시모를 기존에 남아있는 값을 제거
			session.removeAttribute("loginUser");
			//Session에 Login된 회원정보를 담음
			session.setAttribute("loginUser", mDto);
			
			message = "1";
		} else {
			message = "-1";
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json); charset=UTF-8");
		response.getWriter().print(jObj);
		
		return null;
	}

}
