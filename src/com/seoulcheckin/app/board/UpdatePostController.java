package com.seoulcheckin.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.KBoardDAO;

public class UpdatePostController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("수정");
		System.out.println(req.getParameter("kBoardNumber"));
		
		Result result = new Result();
		KBoardDAO KboardDAO = new KBoardDAO();
		int kBoardNumber = Integer.valueOf(req.getParameter("kBoardNumber"));
		
		req.setAttribute("kBoard", KboardDAO.select(kBoardNumber));
		result.setPath("/app/board/update.jsp");
		return result;
	}
}
