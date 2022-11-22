package com.seoulcheckin.app.school;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class SchoolFrontController extends HttpServlet {
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
		
		if(request.equals("/school/programlist.sc")) {
			result = new ProgramListController().execute(req, resp);
			System.out.println("school프론트컨트롤러");
			
			// 프로그램 페이지 요청
		}else if(request.equals("/school/program.sc")) {
			result = new Result();
			result.setPath("/app/school/program.jsp");
		
		// 프로그램 클릭 시 상세정보(모달)
		}else if(request.equals("/school/programdetail.sc")) {
			result = new ProgramDetailController().execute(req, resp);
			
		// 프로그램 신청하기
		}else if(request.equals("/school/applyprogram.sc")) {
			result = new ApplyProgramController().execute(req, resp);
			
		// 관리자 프로그램 페이지 요청
		}else if(request.equals("/school/adminprogramlist.sc")) {
			result = new AdminProgramListController().execute(req, resp);
		
		// 프로그램 필터
		}else if(request.equals("/school/programfilter.sc")) {
			
		// 프로그램  추가
		}else if(request.equals("/school/addprogram.sc")) {
			result = new AddProgramController().execute(req, resp);
			
		// 프로그램 수정
		}else if(request.equals("/school/updatepro.sc")) {
			result = new UpdateProController().execute(req, resp);
			
		// 프로그램 삭제
		}else if(request.equals("/school/deletepro.sc")) {
			result = new DeleteProController().execute(req, resp);
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
