package com.seoulcheckin.app.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.comment.dao.KCommentDAO;

public class DeleteCmController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KCommentDAO kCommentDAO = new KCommentDAO();
		int kCommentNumber = Integer.valueOf(req.getParameter("kCommentNumber"));
		kCommentDAO.delete(kCommentNumber);
		
		return null;
	}
}
