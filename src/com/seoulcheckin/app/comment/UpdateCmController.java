package com.seoulcheckin.app.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.comment.dao.KCommentDAO;
import com.seoulcheckin.app.comment.vo.KCommentVO;

public class UpdateCmController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String kCommentArticle = req.getParameter("kCommentArticle");
		int kCommentNumber = Integer.valueOf(req.getParameter("kCommentNumber"));
		
		KCommentVO KCommentVO = new KCommentVO();
		KCommentDAO kCommentDAO = new KCommentDAO();
		
		KCommentVO.setkCommentArticle(kCommentArticle);
		KCommentVO.setkCommentNumber(kCommentNumber);
		
		kCommentDAO.update(KCommentVO);
		
		return null;
	}
}
