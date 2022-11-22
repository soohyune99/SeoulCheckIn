package com.seoulcheckin.app.comment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class CommentFrontController extends HttpServlet {
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
		
		// 한국어 댓글 쓰기
		if(request.equals("/comment/newcomment.cm")) {
			new NewCommentController().execute(req, resp);
		
		// 한국어 댓글 수정
		}else if(request.equals("/comment/updatecm.cm")) {
			new UpdateCmController().execute(req, resp);
		
		// 한국어 댓글 삭제
		}else if(request.equals("/comment/deletecm.cm")) {
			new DeleteCmController().execute(req, resp);
			
		
		}else if(request.equals("/comment/commentlist.cm")) {
			result = new CommentListController().execute(req, resp); 
		
		}else if(request.equals("/comment/adminCommentList.cm")) {
			result = new Result();
			result.setPath("/app/admin/adminComment.jsp");
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
