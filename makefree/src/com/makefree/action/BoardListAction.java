package com.makefree.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.dao.BoardDAO;
import com.makefree.dto.BoardDTO;
import com.makefree.dto.CriteriaDTO;
import com.makefree.dto.PageMakerDTO;

public class BoardListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/list.jsp";
			
		CriteriaDTO criDto = new CriteriaDTO();
		
		//페이지번호 설정
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지번호: " + page);
		criDto.setPage(page);
		
		//페이지정렬 설정
		String sort_type = "new";
		if(request.getParameter("sort_type") != null) {
			sort_type = request.getParameter("sort_type");
		}
		criDto.setSort_type(sort_type);
		System.out.println("정렬타입: " + sort_type);
		
		//검색 설정(검색타입, 키워드)
		String search_option = null;
		String keyword = null;
		if(request.getParameter("keyword") != null) {
			search_option = request.getParameter("search_option");
			keyword = request.getParameter("keyword");
			criDto.setSearch_option(search_option);
			criDto.setKeyword(keyword);
			request.setAttribute("search_option", search_option);
			request.setAttribute("keyword", keyword);
			System.out.println("검색타입: " + search_option);
			System.out.println("검색키워드: " + keyword);
			
		}
		System.out.println(criDto.toString());
		
		//DB에서 게시글 목록 호출
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = bDao.listAll(criDto);
		
		//페이지네이션 생성
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int totalCount = bDao.totalCount(criDto);
		pageMaker.setTotalCount(totalCount);
		
		//View단으로 게시글목록 전송
		request.setAttribute("list", list);
		request.setAttribute("pageMaker", pageMaker);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("sort_type", sort_type);
		
		System.out.println(pageMaker.toString());
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
