package com.seoulcheckin.app.map;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.map.dao.MapDAO;
import com.seoulcheckin.app.map.vo.MapVO;

public class MapFilterController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		//관리자의 승인 코드
		final String APPROVED_CODE = "1";
		MapDAO mapDAO = new MapDAO();
		MapVO mapVO = new MapVO();
		PrintWriter out = resp.getWriter();
		String mapClassification = req.getParameter("mapClassification");
		
		
		mapVO.setMapApproval(APPROVED_CODE);
		mapVO.setMapClassification(mapClassification);
		JSONArray maps = new JSONArray();
		mapDAO.selectAll(mapVO).forEach(maplist -> {JSONObject map = new JSONObject(maplist); maps.put(map);});
		
		out.print(maps);
		out.close();
		
		return null;
	}
}
