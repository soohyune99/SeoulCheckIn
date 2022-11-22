package com.seoulcheckin.app.board;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class BoardFrontController extends HttpServlet {
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
		
		// 한국어 게시판 페이지 요청
		if(request.equals("/board/board.bo")) {
			result = new BoardController().execute(req, resp);
			
		// 한국어 게시글 보기
		}else if(request.equals("/board/viewpost.bo")) {
			result = new ViewPostController().execute(req, resp);
			
		// 한국어 게시글 쓰기
		/*
		 * }else if(request.equals("/board/write.bo")) { result = new Result();
		 */
			/*
			 * result.setPath("/app/board/write.jsp?memberNumber=" +
			 * req.getSession().getAttribute("memberNumber")); System.out.println("front");
			 * System.out.println(req.getSession().getAttribute("memberNumber"));
			 */
			
		}else if(request.equals("/board/newpost.bo")) {
			result = new NewPostController().execute(req, resp);
			
		// 내 게시글(한) 삭제
		}else if(request.equals("/board/deletepost.bo")) {
			result = new DeletePostController().execute(req, resp);
			
		// 내 게시글(한) 수정
		}else if(request.equals("/board/updatepost.bo")) {
			result = new UpdatePostController().execute(req, resp);
		
		
		}else if(request.equals("/board/updateOkpost.bo")) {
			result = new UpdateOkPostController().execute(req, resp);
			
		// 관리자페이지 게시글
		}else if(request.equals("/board/adminboard.bo")) {
			result = new AdminBoardController().execute(req, resp);
		
		// 관리자페이지 게시글 삭제
		}else if(request.equals("/board/admindeleteBoard.bo")) {
			result = new AdminDeleteBoardController().execute(req, resp);
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
