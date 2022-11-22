package com.seoulcheckin.app.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;
import com.seoulcheckin.app.message.dao.MessageDAO;

public class MyMsgController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MessageDAO messageDAO = new MessageDAO();
		System.out.println("컨트롤러들어옴");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		String temp = req.getParameter("page");
		HttpSession session = req.getSession();
		
//		put 하기 직전에 출력을 써서 맵 밸류값에 널이 들어가서 오류가 떳다 
//		System.out.println(memberDAO.myMessage(pageMap));
		int memberNumber = (Integer)session.getAttribute("memberNumber");

		System.out.println(memberNumber + "쪽지함 보기 맴버넘버");

		 
		 // paging
		 
		 
		 int page = temp == null ? 1 : Integer.parseInt(temp);
		 int total = messageDAO.selectMessageCount(memberNumber);
		 
//			한 페이지에 출력되는 게시글의 개수
			int rowCount = 5;
//			한 페이지에서 나오는 페이지 버튼의 개수
			int pageCount = 10;
			int startRow = (page - 1) * rowCount;
			
			int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
			int startPage = endPage - (pageCount - 1);
			int realEndPage = (int)Math.ceil(total / (double)pageCount);
			
			boolean prev = startPage > 1; 
			endPage = endPage > realEndPage ? realEndPage : endPage;
			boolean next = endPage != realEndPage;
			
			pageMap.put("memberNumber", memberNumber);
			pageMap.put("startRow", startRow);
			pageMap.put("rowCount", rowCount);
		 
			req.setAttribute("Members", memberDAO.myMessage(pageMap));
			req.setAttribute("total", total);
			req.setAttribute("page", page);
			req.setAttribute("startPage", startPage);
			req.setAttribute("endPage", endPage);
			req.setAttribute("prev", prev);
			req.setAttribute("next", next);
		 
		 
		 
		 
		 result.setPath("/app/member/myPageMessage.jsp");
		 
		return result;
	}
}
