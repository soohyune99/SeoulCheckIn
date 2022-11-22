package com.seoulcheckin.app.visa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.navigator.dao.NavigatorDAO;
import com.seoulcheckin.app.navigator.vo.NavigatorVO;
import com.seoulcheckin.app.visa.dao.VisaDAO;
import com.seoulcheckin.app.visa.vo.VisaVO;

public class VisaResultController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		//필드 4개 받기 
		//대륙 / 국가.지역 / 입국목적 / 체류기간
		
		String navigatorContinent = req.getParameter("navigatorContinent");
		String navigatorNation = req.getParameter("navigatorNation");
		String navigatorPurpose = req.getParameter("navigatorPurpose");
		String navigatorPeriod = req.getParameter("navigatorPeriod");
		
		NavigatorVO navigatorVO = new NavigatorVO();
		NavigatorDAO navigatorDAO = new NavigatorDAO();
		VisaDAO visaDAO = new VisaDAO();
		JSONArray jsonarr = new JSONArray();
		
		navigatorVO.setNavigatorContinent(navigatorContinent);
		navigatorVO.setNavigatorNation(navigatorNation);
		navigatorVO.setNavigatorPurpose(navigatorPurpose);
		navigatorVO.setNavigatorPeriod(navigatorPeriod);
		
		int navigatorNumber = navigatorDAO.selectNaviNumber(navigatorVO);
		navigatorDAO.selectVisaNameCon(navigatorNumber).forEach(visaVO -> {JSONObject visa = new JSONObject(visaVO); jsonarr.put(visa);});
		
		System.out.println("resultcontroller");
		System.out.println(jsonarr.toString());
		out.print(jsonarr.toString());
		out.close();
		
		return null;
		
//		visaDAO.select(navigatorVO);
//		JSONObject navigator = new JSONObject(); //네비게이터 하나하나를 담을 수 있는객체
		
		/* 20221013(1) 0:57:14 참고 
		 * 
		 * visaDAO.select(navigatorVO); => JSON으로 바뀌어야함.
		 * out.print로 -> 응답페이지를 만들어야함. 
		 * 응답을 할땐 <body>태그안에 넣어주어야함 write
		 * write()라는 메소드에 JSON으로 변환된 문자열(visaDAO.select(navigatorVO);)을 넣어주어야함.
		 * ajax에서는 알아서 body안에 작성된 write()안에 있는 json 문자열을 가져오고 
		 * 우리가 작성해놓았던 data type의 형식에 맞게끔 success(콜백함수_매개변수)에 넣어준다
		 * {}안에서 콜백함수 DOM 구성
		 * 
		 * return null;  -> return으로 하면 페이지 이동(응답2번하게 됨) 
		 */
 		
		
		// dao에 전달받은 파라미터 전달 
		// 결과 out.print 로 json변환해서 출력
	}
}
