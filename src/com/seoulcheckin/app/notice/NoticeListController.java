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

public class NoticeListController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<NoticeVO> noticeTitles = null;
		List<FaqVO> selectForTitles = null;
		List<FaqVO> selectLocTitles = null;
		
		Result result = new Result();
		
		NoticeDAO noticeDAO = new NoticeDAO();
		FaqDAO faqDAO = new FaqDAO();
		
		// 공지사항 제목
		noticeTitles = noticeDAO.selectNoticeTitle();
		
		// 외국인 전체 title
		selectForTitles = faqDAO.selectForTitle();
		
		// 내국인 전체 title
		selectLocTitles = faqDAO.selectLocTitle();
		
		System.out.println(noticeTitles); // 공지사항 제목
		System.out.println(selectForTitles); // 외국인 전체 title
		System.out.println(selectLocTitles); // 내국인 전체 title
		
		// jsp 에서 사용할 key값, val
		req.setAttribute("titles", noticeTitles);
		req.setAttribute("forTitles", selectForTitles);
		req.setAttribute("locTitles", selectLocTitles);
		
		// 이 값을 가지고 이동할 페이지 jsp경로
		result.setPath("/app/notice/support.jsp");
		
		// 페이지 이동
		return result;
		
	}
}
