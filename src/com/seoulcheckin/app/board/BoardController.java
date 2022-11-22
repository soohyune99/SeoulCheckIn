package com.seoulcheckin.app.board;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.KBoardDAO;

public class BoardController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		KBoardDAO kBoardDAO = new KBoardDAO(); 
		Result result = new Result();
		
		req.setAttribute("kboards", kBoardDAO.selectAll(pageMap));
		
		System.out.println("컨트롤러");
		System.out.println(kBoardDAO.selectAll(pageMap));
//		System.out.println("들어옴");
		
		result.setPath("/app/board/board.jsp"); 
		return result;
	}
}
