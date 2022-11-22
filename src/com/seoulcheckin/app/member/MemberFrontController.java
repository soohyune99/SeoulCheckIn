package com.seoulcheckin.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class MemberFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String request = requestURI.substring(contextPath.length());
		Result result = null;

		// 아이디 조회
		if (request.equals("/member/checkId.me")) {
			new CheckIdController().execute(req, resp);

		// 인증번호 확인
		} else if (request.equals("/member/verification.me")) {
			new VerificationController().execute(req, resp);

		// 회원가입 완료
		} else if (request.equals("/member/joinOk.me")) {
			new JoinOkController().execute(req, resp);

		// 로그인 완료
		} else if (request.equals("/member/loginOk.me")) {
			new LoginOkController().execute(req, resp);

		// 구글 로그인(OAuth)
		} else if (request.equals("/member/loginGoogle.me")) {
			new LoginGoogleController().execute(req, resp);

			// 카카오 로그인(OAuth)
			/*
			 * } else if (request.equals("/member/loginKakao.me")) { new
			 * LoginKakaoController().execute(req, resp);
			 * 
			 * // 네이버 로그인(OAuth) } else if (request.equals("/member/loginNaver.me")) {
			 * result = new LoginNaverController().execute(req, resp);
			 */

		// 로그아웃
		} else if (request.equals("/member/logout.me")) {
			new LogoutController().execute(req, resp);

			// my page start

		// 마이페이지 페이지 요청
		} else if (request.equals("/member/mypage.me")) {
			result = new MyPageController().execute(req, resp);

		// 마이페이지 ajax
		} else if (request.equals("/member/mypagelist.me")) {
			result = new SelectProgramCountController().execute(req, resp);

		// 마이페이지 ajax2
		} else if (request.equals("/member/mypagelist2.me")) {
			result = new SelectMessageCountController().execute(req, resp);

		// 마이페이지 ajax3
		} else if (request.equals("/member/mypagelist3.me")) {
			result = new SelectBoardCountController().execute(req, resp);

		// 마에페이지 ajax4
		} else if (request.equals("/member/updatelist.me")) {
			result = new ProfileController().execute(req, resp);

		// 마이페이지 프로필 변경
		} else if (request.equals("/member/profile.me")) {

		// 마이페이지 내가 쓴 글/댓글 페이지 요청
		} else if (request.equals("/member/mypost.me")) {

		// 내가 쓴 댓글로 탭 이동
		} else if (request.equals("/member/mycomment.me")) {
			result = new MyCommentController().execute(req, resp);

		// 마이페이지 강의내역 페이지 요청
		} else if (request.equals("/member/myclass.me")) {
			result = new MyClassController().execute(req, resp);

		// 커뮤니티 페이지 요청
		} else if (request.equals("/member/mycommunity.me")) {
			result = new MyPostController().execute(req, resp);

		// 마이페이지 쪽지함 페이지 요청
		} else if (request.equals("/member/mymsg.me")) {
			result = new MyMsgController().execute(req, resp);

		// 쪽지함에서 쪽지 보기
		} else if (request.equals("/member/msgview.me")) {
			result = new MyMsgController().execute(req, resp);

		// 마이페이지 정보수정, 회원탈퇴(비밀번호 확인 페이지 요청, 정적)
		} else if (request.equals("/member/checkpw.me")) {

		// 정보수정 페이지 요청
		} else if (request.equals("/member/updateinfo.me")) {
			result = new UpdateInfoController().execute(req, resp);

		// 마이페이지 정보수정 submit
		} else if (request.equals("/member/updateinfoOk.me")) {
			result = new UpdateInfoOkController().execute(req, resp);

		// 비밀번호 확인 후 회원탈퇴 페이지 요청
		} else if (request.equals("/member/dropinfo.me")) {
			result = new DropInfoController().execute(req, resp);

		// 마이페이지 회원탈퇴 submit, 관리자페이지 회원 삭제
		} else if (request.equals("/member/dropinfoOk.me")) {
			result = new DropInfoOkController().execute(req, resp);

			// myPage end

		// 관리자페이지 회원관리 페이지 요청
		} else if (request.equals("/member/memberlist.me")) {
			result = new MemberListController().execute(req, resp);

		// 관리자페이지 회원 필터
		} else if (request.equals("/member/memberfilter.me")) {

		// 관리자페이지 회원 삭제
		} else if (request.equals("/member/deleteMember.me")) {
			result = new DeleteMemberController().execute(req, resp);
			
		// 관리자 메인페이지 요청
		} else if (request.equals("/admin/adminMain.me")) {
			result = new Result();
			result.setPath("/app/admin/adminMain.jsp");
		}

		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
