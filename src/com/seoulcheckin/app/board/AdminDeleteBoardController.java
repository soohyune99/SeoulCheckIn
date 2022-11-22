package com.seoulcheckin.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.EBoardDAO;
import com.seoulcheckin.app.board.dao.KBoardDAO;

public class AdminDeleteBoardController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KBoardDAO kboardDAO = new KBoardDAO();
		EBoardDAO eboardDAO = new EBoardDAO();

		String[] boardNumbers = req.getParameter("boardNumber").split("게시판");

		for (String boardNumber : boardNumbers) {
			if (boardNumber.contains("한국어")) {
				String[] kboard = boardNumber.split(" ");
				for (String string : kboard) {
					if(string == "" || string.contains("한국어")) {continue;}
					System.out.println(string);
					kboardDAO.delete(Integer.valueOf(string.trim()));	
				}
				
			} else {
				String[] eboard = boardNumber.split(" ");
				for (String string : eboard) {
					if (string == "" || string.contains("외국어")) {continue;}
					System.out.println(string);
					eboardDAO.delete(Integer.valueOf(string.trim()));	
				}				
			}
		}
		return null;
	}
}
