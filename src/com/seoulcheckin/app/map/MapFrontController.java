package com.seoulcheckin.app.map;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class MapFrontController extends HttpServlet {
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
		
		// 지도 페이지 요청
		if(request.equals("/map/map.mp")) {
			result = new MapController().execute(req, resp);
			
		// 카테고리 누를 때마다 하위목록 변경
		}else if(request.equals("/map/mapfilter.mp")) {
			new MapFilterController().execute(req, resp);
			
		// 목록을 누르면 상세정보 요청
		}else if(request.equals("/map/mapdetail.mp")) {
			new MapDetailController().execute(req, resp);
			
		// 부동산 등록 페이지 요청(정적)
		}else if(request.equals("/map/registerhouse.mp")) {
		
		// 일자리 등록 페이지 요청(정적)
		}else if(request.equals("/map/registerjob.mp")) {
			
		// 부동산, 일자리 등록 submit
		}else if(request.equals("/map/registerOk.mp")) {
		
		// 관광지, 즐길거리 등록 submit
		}else if(request.equals("/map/addMapOk.mp")) {
			result = new AddMapOkController().execute(req, resp);
		
		// 관리자 map 관리페이지 요청
		}else if(request.equals("/map/adminMaplist.mp")) {
			result = new AdminMapListController().execute(req, resp);
		
		// 관리자페이지 주거지, 일자리 승인
		}else if(request.equals("/map/mapconfirm.mp")) {
					
		// 관리자페이지 주거지 필터
		}else if(request.equals("/map/housefilter.mp")) {
		
		// 관리자페이지 일자리 필터
		}else if(request.equals("/map/jobfilter.mp")) {
				
		// 관리자페이지 관광지 필터 
		}else if(request.equals("/map/landmarkfilter.mp")) {
			
		// 관리자페이지 즐길거리 필터
		}else if(request.equals("/map/enjoyfiler.mp")) {
		
		// 관리자페이지 관광지, 즐길거리 수정
		}else if(request.equals("/map/updatemap.mp")) {
			
		// 관리자페이지 관광지, 즐길거리 삭제
		}else if(request.equals("/map/deletemap.mp")) {
			result = new DeleteMapController().execute(req, resp);
		}
//		else if(request.equals("/map/messagetranslate.mp")) {
//			new MapMsgController().execute(req, resp);
//		}
		
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
