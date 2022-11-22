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
import com.seoulcheckin.app.board.dao.KBoardDAO;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class SelectBoardCountController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();

		
		int memberNumber = (Integer)session.getAttribute("memberNumber");

		System.out.println(memberNumber + "보드 맴버넘버들어옴");
		 
		 KBoardDAO kBoardDAO = new KBoardDAO();
		 int result = kBoardDAO.myBoardCount(memberNumber);
//	     회원번호 정보 전달 
		
			
			out.print(result);
			out.close();
		
			
					
		
		return null;
	}
}
