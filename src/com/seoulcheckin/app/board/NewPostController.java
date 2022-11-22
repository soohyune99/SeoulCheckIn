package com.seoulcheckin.app.board;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.KBoardDAO;
import com.seoulcheckin.app.board.vo.KBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class NewPostController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("write controller");
		KBoardDAO kBoardDAO = new KBoardDAO();
		KBoardVO kBoardVO = new KBoardVO();
		Result result = new Result();
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload\\";
		int fileSize = 1024 * 1024 * 5;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println(multipartRequest);
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		String fileName = fileNames.nextElement();
		System.out.println(fileName);
		
		String kPhotoName = multipartRequest.getFilesystemName(fileName);
		kBoardVO.setkBoardPhoto(kPhotoName);

		
		System.out.println(req.getSession().getAttribute("memberNumber"));
		kBoardVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		kBoardVO.setkBoardTitle(multipartRequest.getParameter("kBoardTitle"));
		kBoardVO.setkBoardArticle(multipartRequest.getParameter("kBoardArticle"));
		
		kBoardDAO.insert(kBoardVO);
		result.setPath("/board/board.bo");
		
		return result;
	}
}
