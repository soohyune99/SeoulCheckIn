package com.seoulcheckin.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.KBoardDAO;
import com.seoulcheckin.app.board.vo.KBoardVO;

public class UpdateOkPostController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		
		KBoardDAO KboardDAO = new KBoardDAO();
		KBoardVO KboardVO = new KBoardVO();
		
		String kBoardTitle = req.getParameter("kBoardTitle");
		String kBoardArticle = req.getParameter("kBoardArticle");
		System.out.println(kBoardTitle);
		System.out.println(kBoardArticle);
		int kBoardNumber = Integer.valueOf(req.getParameter("kBoardNumber"));

		KboardVO.setkBoardTitle(kBoardTitle);
		KboardVO.setkBoardArticle(kBoardArticle);
		KboardVO.setkBoardNumber(kBoardNumber);
		
		KboardDAO.update(KboardVO);
		System.out.println("수정 완료");
		
		result.setPath("/board/viewpost.bo?kBoardNumber=" + kBoardNumber);
		return result;
	}

}
