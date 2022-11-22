package com.seoulcheckin.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.KBoardDAO;

public class ViewPostController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KBoardDAO KboardDAO = new KBoardDAO();
		Result result = new Result();
		
		int boardNumber = Integer.valueOf(req.getParameter("kBoardNumber"));
		
		req.setAttribute("kboard", KboardDAO.select(boardNumber));
		
		System.out.println("detail 컨트롤러");
		System.out.println(KboardDAO.select(boardNumber));
		result.setPath("/app/board/posting.jsp");
		return result;
	}
}
