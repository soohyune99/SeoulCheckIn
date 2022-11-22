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
import com.seoulcheckin.app.myprogram.dao.MyProgramDAO;
import com.seoulcheckin.app.school.dao.SchoolDAO;

public class SelectProgramCountController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();

		
	/*	int	memberNumber = Integer.valueOf(req.getParameter("memberNumber"));*/
		int memberNumber = (Integer)session.getAttribute("memberNumber");
		
		System.out.println(memberNumber + "강의맴버넘버들어옴");


		/* int memberNumber = 1; */
		 
		 
		 MyProgramDAO myProgramDAO = new MyProgramDAO();
		 int result = myProgramDAO.myClassCount(memberNumber);
			out.print(result);
			
			/*
			 * int messageCount = memberDAO.selectMessageCount(memberNumber);
			 * out.print(messageCount);
			 */
			/*
			 * result.isRedirect(); result.setPath("")
			 */
			out.close();
		
			
					
		
		return null;
	}
}
