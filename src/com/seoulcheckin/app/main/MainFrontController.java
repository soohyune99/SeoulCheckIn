package com.seoulcheckin.app.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class MainFrontController extends HttpServlet {
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
		
		// 메인 페이지 요청
		if(request.equals("/Seoul-CheckIn.kr")) {
			result = new Result();
			result.setPath("/app/main/main.jsp");
		
		// 404 에러페이지
		}else if(request.equals("/Seoul-Checkout.kr")) {
			result = new Result();
			result.setPath("/app/fix/errorPage.jsp");
		
		// 관리자 페이지
		}else if(request.equals("/admin.kr")) {
			result = new Result();
			result.setPath("/app/admin/adminMain.jsp");
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
