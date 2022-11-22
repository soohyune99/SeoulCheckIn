/*
 * package com.seoulcheckin.app.member;
 * 
 * import java.io.IOException;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import com.seoulcheckin.app.Execute; import com.seoulcheckin.app.Result;
 * import com.seoulcheckin.app.member.dao.MemberDAO; import
 * com.seoulcheckin.app.member.vo.MemberVO;
 * 
 * public class LoginNaverController implements Execute {
 * 
 * @Override public Result execute(HttpServletRequest req, HttpServletResponse
 * resp) throws ServletException, IOException {
 * //resp.addHeader("Access-Control-Allow-Origin", "*");
 * //resp.setHeader("Access-Control-Allow-Headers",
 * "origin, x-requested-with, content-type, accept");
 * req.setCharacterEncoding("UTF-8"); resp.setCharacterEncoding("UTF-8");
 * MemberDAO memberDAO = new MemberDAO(); MemberVO memberVO = new MemberVO();
 * HttpSession session = req.getSession(); Result result = new Result(); int
 * memberNumber = 0;
 * 
 * String url = req.getParameter("url"); String memberEmail =
 * req.getParameter("memberEmail"); String memberName =
 * req.getParameter("memberName"); String memberPhoto =
 * req.getParameter("memberPhoto"); String memberPhone =
 * req.getParameter("memberPhoneNumber");
 * 
 * memberVO.setMemberClassification("4"); // 네이버 OAuth 가입 계정 구분
 * memberVO.setMemberEmail(memberEmail); memberVO.setMemberName(memberName);
 * memberVO.setMemberPhoto(memberPhoto);
 * 
 * try { memberDAO.join(memberVO);
 * 
 * } catch (Exception e) {;}
 * 
 * memberNumber = memberDAO.loginOauth(memberVO);
 * 
 * System.out.println(memberNumber); System.out.println(memberName);
 * System.out.println(memberPhoto);
 * 
 * session.setAttribute("memberNumber", memberNumber);
 * 
 * result.setPath("/index.jsp");
 * 
 * return result; }
 * 
 * }
 */