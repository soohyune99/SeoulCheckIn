package com.seoulcheckin.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.KBoardDAO;
import com.seoulcheckin.app.board.vo.KBoardDTO;
import com.seoulcheckin.app.board.vo.KBoardVO;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class MyPostController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		KBoardDAO kBoardDAO = new KBoardDAO();
		KBoardVO kBoardVO = new KBoardVO();
		KBoardDTO kBoardDTO = new KBoardDTO();
		MemberDAO memberDAO = new MemberDAO();
		
		HttpSession session = req.getSession();

		int memberNumber = (Integer)session.getAttribute("memberNumber");
 
		System.out.println(memberNumber + " 게시글 보기 맴버넘버 ");
		
		 kBoardDAO.myBoard(memberNumber);
		 
		 req.setAttribute("myBoards",  kBoardDAO.myBoard(memberNumber));
		
		 System.out.println(kBoardDAO.myBoard(memberNumber));
		
		result.setPath("/app/member/myPageCommunity.jsp");
		
		return result;
	}
}
