package com.seoulcheckin.app.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;
import com.seoulcheckin.app.member.vo.MemberVO;

public class JoinOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberVO memberVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		
		String memberClassification = req.getParameter("memberClassification");
		String memberEmail = req.getParameter("memberEmail");
		String memberName = req.getParameter("memberName");
		String memberPhone = req.getParameter("memberPhone");
		String memberPassword = req.getParameter("memberPassword");
		
		memberPassword = new String(Base64.getEncoder().encode(memberPassword.getBytes()));
		
		memberVO.setMemberClassification(memberClassification);
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberName(memberName);
		memberVO.setMemberPhone(memberPhone);
		memberVO.setMemberPassword(memberPassword);
		
		memberDAO.join(memberVO);
		
		return null;
	}
}
