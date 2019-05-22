package com.makefree.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makefree.action.Action;
import com.makefree.action.ActionForward;
import com.makefree.action.BoardListAction;
import com.makefree.action.BoardViewAction;
import com.makefree.action.CommentListAction;
import com.makefree.action.ConstractAction;
import com.makefree.action.DropMemberAction;
import com.makefree.action.DropMemberPlayAction;
import com.makefree.action.IdCheckAction;
import com.makefree.action.IndexAction;
import com.makefree.action.InfoUpdateAction;
import com.makefree.action.InfoUpdatePlayAction;
import com.makefree.action.LoginAjaxAction;
import com.makefree.action.LoginOutAction;
import com.makefree.action.LogoutAjaxAction;
import com.makefree.action.MemberAction;
import com.makefree.action.PwCheckAction;
import com.makefree.action.PwUpdateAction;
import com.makefree.action.PwUpdatePlayAction;
import com.makefree.action.memberPlayAction;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontController() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;
		ActionForward forward = null;
		
		String uri = request.getRequestURI(); 
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());
		System.out.println("페이지 이동 -> " + command);
		
		if(command.contentEquals("/index.makefree")) {
			action = new IndexAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/constract.makefree")) {
			action = new ConstractAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/member.makefree")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/idCheck.makefree")) {
			action = new IdCheckAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/memberPlay.makefree")) {
			action = new memberPlayAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/login.makefree")) {
			action = new LoginAjaxAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/loginOut.makefree")) {
			action = new LoginOutAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/logoutAjax.makefree")) {
			action = new LogoutAjaxAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/infoUpdate.makefree")) {
			action = new InfoUpdateAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/infoUpdatePlay.makefree")) {
			action = new InfoUpdatePlayAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/pwCheck.makefree")) {
			action = new PwCheckAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/pwUpdate.makefree")) {
			action = new PwUpdateAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/pwUpdatePlay.makefree")) {
			action = new PwUpdatePlayAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/dropMember.makefree")) {
			action = new DropMemberAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/dropMemberPlay.makefree")) {
			action = new DropMemberPlayAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/boardList.makefree")) {
			action = new BoardListAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/boardView.makefree")) {
			action = new BoardViewAction();
			forward = action.excute(request, response);
		} else if(command.contentEquals("/commentlist.makefree")) {
			action = new CommentListAction();
			forward = action.excute(request, response);
		} 
		
		
		
		
		
		
		
		
		//-------- 공통 분기 작업 ----------------
		if(forward != null) {
			if(forward.isRedirect()) {
				// page 전환 시 redirect 방식
				response.sendRedirect(forward.getPath());
			} else {
				// page 전환 시 forward 방식
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
		
		
	}

}
