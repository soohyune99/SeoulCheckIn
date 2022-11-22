package com.seoulcheckin.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class DropInfoOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 System.out.println("드랍컨트롤러 들어옴");
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		
		HttpSession session = req.getSession();
		
		
		int memberNumber = (Integer)session.getAttribute("memberNumber");
		 
		memberDAO.delete(memberNumber);
		
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/Seoul-CheckIn.kr");
		return result;
	}
}
