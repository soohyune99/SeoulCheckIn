package com.seoulcheckin.app.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.board.dao.EBoardDAO;
import com.seoulcheckin.app.board.dao.KBoardDAO;
import com.seoulcheckin.app.board.vo.EBoardDTO;
import com.seoulcheckin.app.board.vo.KBoardDTO;

public class AdminBoardController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		KBoardDAO kboardDAO = new KBoardDAO(); 
		EBoardDAO eboardDAO = new EBoardDAO(); 
		Result result = new Result();
		String temp = req.getParameter("page");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		List<KBoardDTO> kboards = null;
		List<EBoardDTO> eboards = null;

		int page = temp == null ? 1 : Integer.parseInt(temp);
		int ktotal = kboardDAO.selectCount();
		int etotal = eboardDAO.selectCount();

		int rowCount = 10;
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;

		int kEndPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int eEndPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int kStartPage = kEndPage - (pageCount - 1);
		int eStartPage = eEndPage - (pageCount - 1);
		int kRealEndPage = (int) Math.ceil(ktotal / (double) pageCount);
		int eRealEndPage = (int) Math.ceil(etotal / (double) pageCount);

		boolean kPrev = kEndPage > 1;
		boolean ePrev = eEndPage > 1;
		kEndPage = kEndPage > kRealEndPage ? kRealEndPage : kEndPage;
		eEndPage = eEndPage > eRealEndPage ? eRealEndPage : eEndPage;
		boolean kNext = kEndPage != kRealEndPage;
		boolean eNext = eEndPage != eRealEndPage;
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		kboards = kboardDAO.selectAdmin(pageMap);
		eboards = eboardDAO.selectAdmin(pageMap);
		
		req.setAttribute("kboards", kboards);	
		req.setAttribute("eboards", eboards);	
		req.setAttribute("ktotal", ktotal);
		req.setAttribute("etotal", etotal);
		req.setAttribute("page", page);
		req.setAttribute("kStartPage", kStartPage);
		req.setAttribute("eStartPage", eStartPage);
		req.setAttribute("kEndPage", kEndPage);
		req.setAttribute("eEndPage", eEndPage);
		req.setAttribute("kPrev", kPrev);
		req.setAttribute("ePrev", ePrev);
		req.setAttribute("kNext", kNext);
		req.setAttribute("eNext", eNext);
		
		result.setPath("/app/admin/adminCommunityManage.jsp");
		
		return result;
	}

}
