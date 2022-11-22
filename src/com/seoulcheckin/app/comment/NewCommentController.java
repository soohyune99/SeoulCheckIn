package com.seoulcheckin.app.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.comment.dao.KCommentDAO;
import com.seoulcheckin.app.comment.vo.KCommentVO;

public class NewCommentController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KCommentDAO kCommentDAO = new KCommentDAO();
		KCommentVO KCommentVO = new KCommentVO();
		
		String kCommentArticle = req.getParameter("kCommentArticle");
		int kBoardNumber = Integer.valueOf(req.getParameter("kBoardNumber"));
		int memberNumber = Integer.valueOf(req.getParameter("memberNumber"));
		
		KCommentVO.setkCommentArticle(kCommentArticle);
		KCommentVO.setkBoardNumber(kBoardNumber);
		KCommentVO.setMemberNumber(memberNumber);
		
		kCommentDAO.insert(KCommentVO);
		
		return null;
	}
}
