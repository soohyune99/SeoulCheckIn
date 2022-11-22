package com.seoulcheckin.app.map;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.map.dao.MapDAO;
import com.seoulcheckin.app.map.vo.MapVO;

public class AdminMapListController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MapDAO mapDAO = new MapDAO();
		Result result = new Result();
		String temp = req.getParameter("page");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int total = mapDAO.selectCount();
		
		int rowCount = 10;
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int) Math.ceil(total / (double) pageCount);

		boolean prev = startPage > 1;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		req.setAttribute("maps", mapDAO.selectPage(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		
		result.setPath("/app/admin/adminLandmark.jsp");
		
		return result;
	}

}
