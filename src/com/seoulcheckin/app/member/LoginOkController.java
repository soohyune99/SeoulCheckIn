package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.member.dao.MemberDAO;
import com.seoulcheckin.app.member.vo.MemberVO;

public class LoginOkController implements Execute{
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setCharacterEncoding("UTF-8");
      MemberDAO memberDAO = new MemberDAO();
      MemberVO memberVO = new MemberVO();
      HttpSession session = req.getSession();
      PrintWriter out = resp.getWriter();

      System.out.println(req.getRequestURI());
      
      String memberEmail = req.getParameter("memberEmail");
      String memberPassword = new String(Base64.getEncoder().encode(req.getParameter("memberPassword").getBytes()));
      
      System.out.println(memberEmail);
      System.out.println(memberPassword);
      
      memberVO.setMemberEmail(memberEmail);
      memberVO.setMemberPassword(memberPassword);

      
      try {
    	  memberVO = memberDAO.login(memberVO);
    	  
         System.out.println(memberVO.toString());
    	  
    	  
         session.removeAttribute("logout");
         session.setAttribute("memberNumber", memberVO.getMemberNumber());
         session.setAttribute("memberName", memberVO.getMemberName());
         session.setAttribute("memberEmail", memberVO.getMemberEmail());
      
         out.print(memberVO);
         out.close();
      
      } catch (Exception e) {
         e.printStackTrace();
      }
      
//      result.setPath(url);
      
      return null;
   }
}