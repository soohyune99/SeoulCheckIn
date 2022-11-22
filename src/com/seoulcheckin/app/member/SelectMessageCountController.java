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
import com.seoulcheckin.app.message.dao.MessageDAO;

public class SelectMessageCountController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();

			int messageNumber = (Integer)session.getAttribute("memberNumber");

			System.out.println(messageNumber + "메시지 맴버넘버들어옴");

		 
		 MessageDAO messageDAO = new MessageDAO();
		 int result = messageDAO.selectMessageCount(messageNumber);
//	     회원번호 정보 전달 
		
			
			out.print(result);
			out.close();
		
			
					
		
		return null;
	}
}
