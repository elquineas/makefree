package com.makefree.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.MemberDAO;
import com.makefree.dto.MemberDTO;

public class memberPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.makefree";
		
		String id = request.getParameter("input_id");
		String pw = request.getParameter("input_pw");
		String name = request.getParameter("input_name");
		String phone_1 = request.getParameter("insert_phone1");
		String phone_2 = request.getParameter("insert_phone2");
		String phone_3 = request.getParameter("insert_phone3");
		String phone = phone_1 + phone_2 + phone_3;
		String email_id = request.getParameter("input_mail");
		String email_url = request.getParameter("email_url");
		String email = email_id + "@" + email_url;
		String zipcode = request.getParameter("sample6_postcode");
		String addr1 = request.getParameter("sample6_address");
		String addr2 = request.getParameter("sample6_detailAddress");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO(id, pw, name, phone, email, zipcode, addr1, addr2);
		System.out.println(mDto.toString());
		
		int result = mDao.memInsert(mDto);
		
		if(result > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		//값이 안변할때 forward
		//값이 변할때 redirect
		return forward;
	}

}
