package com.seoulcheckin.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;

public class MyCommentController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		
		result.setPath("/app/member/mycomment.jsp");
				
		return result;
	}
}
