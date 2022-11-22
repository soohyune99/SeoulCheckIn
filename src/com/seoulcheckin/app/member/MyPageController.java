package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class MyPageController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		Result result = new Result();
		/*
		 * HttpSession session = req.getSession();
		 * 
		 * int memberNumber = (Integer)session.getAttribute("memberNumber");
		 * 
		 * System.out.println(memberNumber);
		 */
		
			/*
			 * result.isRedirect(); result.setPath("")
			 */
		
		
		
		
			
		result.setPath("/app/member/myPageMain.jsp");			
		
		return result;
	}
}
