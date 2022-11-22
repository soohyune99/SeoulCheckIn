package com.seoulcheckin.app.banner;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class BannerFrontController extends HttpServlet {
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
		
		// 메인 페이지 배너
		if(request.equals("/banner/select.bn")) {
			result = new SelectController().execute(req, resp);
		
		// 관리자 배너 페이지 요청
		}else if(request.equals("/banner/adminBanner.bn")) {
			result = new AdminBannerController().execute(req, resp);
		
		// 관리자 배너 추가 페이지 요청
		}else if(request.equals("/banner/addBanner.bn")) {
			result = new Result();
			result.setPath("/app/admin/adminBannerAdd.jsp");
			
		// 관리자 배너 추가
		}else if(request.equals("/banner/addOkBanner.bn")) {
			result = new AddOkBannerController().execute(req, resp);
			
		// 관리자 배너 삭제
		}else if(request.equals("/banner/deleteBanner.bn")) {
			result = new DeleteBannerController().execute(req, resp);
			
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
