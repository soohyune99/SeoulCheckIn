package com.seoulcheckin.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class DeleteMemberController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();

		String[] memberNumbers = req.getParameter("memberNumber").split(" ");
		
		for (String memberNumber : memberNumbers) {
			if(memberNumber == "") {continue;}
			memberDAO.delete(Integer.valueOf(memberNumber.trim()));		
		}
		return null;
	}
}
