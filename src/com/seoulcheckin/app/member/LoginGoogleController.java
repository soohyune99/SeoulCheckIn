package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;
import com.seoulcheckin.app.member.vo.MemberVO;

public class LoginGoogleController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		PrintWriter out = resp.getWriter();
		int memberNumber = 0;
		
		String memberEmail = req.getParameter("memberEmail");
		String memberName = req.getParameter("memberName");
		String memberPhoto = req.getParameter("memberPhoto");
		
		memberVO.setMemberClassification("5");	//	구글 OAuth 가입 계정 구분 
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberName(memberName);
		memberVO.setMemberPhoto(memberPhoto);
		
		try {
			memberDAO.join(memberVO);

		} catch (Exception e) {
		}

		memberNumber = memberDAO.loginOauth(memberVO);
		
		out.print(memberNumber);
		out.close();
		
		return null;
	}

}
