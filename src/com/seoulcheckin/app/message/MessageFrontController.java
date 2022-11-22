package com.seoulcheckin.app.message;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class MessageFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String request = requestURI.substring(contextPath.length());
		Result result = null;
		
		// 지도 상세정보에서 쪽지 보내기
		if(request.equals("/message/mapmsg.ms")) {
			new MapMsgController().execute(req, resp);
		
		// 게시판에서 쪽지 보내기
		}else if(request.equals("/message/sendmsg.ms")) {
			
		// 게시판에서 번역하기 버튼 누르면 번역
		}else if(request.equals("/message/messagetranslate.ms")) {
	        new MessageTranslateController().execute(req, resp);
	    
	    // 쪽지 목록 보기    
	    }else if(request.equals("/message/msglistOk.ms")) {
	    	new ListMsgController().execute(req,resp);
	    }
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
