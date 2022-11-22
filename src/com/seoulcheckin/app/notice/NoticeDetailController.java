package com.seoulcheckin.app.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.notice.dao.NoticeDAO;
import com.seoulcheckin.app.notice.vo.NoticeVO;

public class NoticeDetailController implements Execute{
	
	// 고객센터 공지사항 결과 페이지 컨트롤러
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 공지사항 상세페이지 이동
		Result result = new Result();
		// 페이지 이동후 뿌려줄 정보 담음
		NoticeVO noticeVO = new NoticeVO();
		// 사이드부분 제목 뽑아올 List
		List<NoticeVO> noticeTitles = null;
		// 메소드 객체화
		NoticeDAO noticeDAO = new NoticeDAO();
		
		//클릭시 넘어온 number
		int noticeNumber = Integer.valueOf(req.getParameter("noticeNumber"));
		
		// 메소드의 결과를 담아줌
		noticeVO = noticeDAO.selectNoticeDetail(noticeNumber);
		
		// 공지사항 제목
		noticeTitles = noticeDAO.selectNoticeTitle();
		// 이동한 페이지에서 key, val 정해주고 넘김
		req.setAttribute("noticeDetail", noticeVO);
		req.setAttribute("titles", noticeTitles);
		
		//이동할 페이지 경로
		result.setPath("/app/faq/support_section.jsp");
		return result;
	}
}
