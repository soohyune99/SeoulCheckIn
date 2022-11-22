package com.seoulcheckin.app.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;
import com.seoulcheckin.app.member.vo.MemberVO;

public class UpdateInfoOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String memberName = req.getParameter("name");
		String memberEmail = req.getParameter("email");
		String memberPassword = req.getParameter("password");
		String memberPhone = req.getParameter("phone");
		HttpSession session = req.getSession();
		
		int memberNumber = (Integer)session.getAttribute("memberNumber");
	  
		System.out.println(memberNumber + "수정들어옴");
	 		
		MemberVO memberVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		
		memberPassword = new String(Base64.getEncoder().encode(memberPassword.getBytes()));
		
		memberVO.setMemberNumber(memberNumber);
		memberVO.setMemberName(memberName);
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberPassword(memberPassword);
		memberVO.setMemberPhone(memberPhone);
		
		System.out.println("수정1");
		memberDAO.update(memberVO);	
		System.out.println("수정2");
		
		result.setPath(req.getContextPath() + "/member/mypage.me");
		return result;
		
	}
}
