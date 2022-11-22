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
import com.seoulcheckin.app.notice.dao.NoticeDAO;
import com.seoulcheckin.app.notice.vo.NoticeVO;

public class SearchResultController extends Result implements Execute {

	// 검색결과 나오는 페이지 컨트롤러
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Result result = new Result();
		
		
		FaqDAO faqDAO = new FaqDAO();
		NoticeDAO noticeDAO = new NoticeDAO();
		
		// 검색결과 공지사항 선언
		List<NoticeVO> noticeSearchSubmitResults = null;
		
		// 검색결과 FAQ(내국인, 외국인) 선언
		List<FaqVO> locSearchSubmitResults = null;
		List<FaqVO> forSearchSubmitResults = null;
		
		// 입력한 검색어 : searchContent
		String searchContent = req.getParameter("query");
		System.out.println(searchContent);
		
		// 공지사항 검색 메소드에 결과 담기
		noticeSearchSubmitResults = noticeDAO.NoticeSearchSubmitResult(searchContent);
		System.out.println(noticeSearchSubmitResults);
		// FAQ 검색 메소드에 결과 담기
		locSearchSubmitResults = faqDAO.locSearchSubmitResult(searchContent);
		forSearchSubmitResults = faqDAO.forSearchSubmitResult(searchContent);
		System.out.println(locSearchSubmitResults);
		System.out.println(forSearchSubmitResults);
		// 공지사항, FAQ 결과 한번에 가지고가기 
		req.setAttribute("searchContent", searchContent);
		req.setAttribute("noticeSearchSubmitResults", noticeSearchSubmitResults);
		req.setAttribute("locSearchResultContents", locSearchSubmitResults);
		req.setAttribute("forSearchResultContents", forSearchSubmitResults);
		
		// 이동할 페이지 
		result.setPath("/app/faq/support_searchResult.jsp");
		
		return result;
	}

}
