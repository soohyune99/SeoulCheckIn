package com.seoulcheckin.app.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.faq.dao.FaqDAO;
import com.seoulcheckin.app.faq.vo.FaqVO;

public class LocDetailController implements Execute {
	
	// 고객센터 내국인 결과 페이지 컨트롤러

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 내국인 결과 페이지 이동
		Result result = new Result();
		// 결과 담아줄 List
		FaqVO faqVO = new FaqVO();
		
		// 사이드 부분 제목 List
		List<FaqVO> selectLocTitles = null;
		
		// 메소드 객체화 
		FaqDAO faqDAO = new FaqDAO();
		
		// 클릭시 넘어온 faq_number
		int faqNumber = Integer.valueOf(req.getParameter("faqNumber"));
		
		// 메소드 결과를 담아줌 
		faqVO = faqDAO.selectLocDetail(faqNumber);
		
		// 사이드 부분 내국인 제목 담아줌
		selectLocTitles = faqDAO.selectLocTitle();
		
		// 이동한 페이지에서 key,val 넘김
		req.setAttribute("faqLocDetail", faqVO);
		req.setAttribute("selLocTitles", selectLocTitles);
		
		//이동할 페이지 경로
		result.setPath("/app/faq/support_section2_loc.jsp");
		
		return result;
	}

}
