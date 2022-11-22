package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class CheckIdController implements Execute {

	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			MemberDAO memberDAO = new MemberDAO();
			String memberEmail = req.getParameter("memberEmail");
			PrintWriter out = resp.getWriter();
			
			int result = memberDAO.checkId(memberEmail);
			
			out.print(result);
			out.close();
			
		return null;
	}

}
