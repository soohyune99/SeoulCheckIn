package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;

public class UpdateInfoController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		Result result = new Result();
//		/*
//		 * int memberNumber = (Integer)session.getAttribute("memberNumber");
//		 * 
//		 * System.out.println(memberNumber);
//		 */
		/*
		 * int memberNumber = 1;
		 * 
		 * MemberDAO memberDAO = new MemberDAO(); JSONObject jsonObject = new
		 * JSONObject(memberDAO.selectProgramCount(memberNumber)); 회원번호 정보 전달
		 * 
		 * 
		 * out.print(jsonObject.toString()); out.close();
		 */
		
		result.setPath("/app/member/myPageChange.jsp");
		
		return result;
	}
}
