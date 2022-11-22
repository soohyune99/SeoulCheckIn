package com.seoulcheckin.app.comment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.comment.dao.KCommentDAO;

public class CommentListController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html;charset=utf-8");
		int kBoardNumber = Integer.valueOf(req.getParameter("kBoardNumber"));
		KCommentDAO kCommentDAO = new KCommentDAO();
		PrintWriter out = resp.getWriter();
		
		JSONArray comments = new JSONArray();
		kCommentDAO.selectAll(kBoardNumber).forEach(kcommentDTO -> {JSONObject comment = new JSONObject(kcommentDTO); comments.put(comment);});
		out.print(comments.toString());
		out.close();
		
		return null;
	}
}
