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

public class MapDetailController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		JSONArray maps = new JSONArray();
		PrintWriter out = resp.getWriter();
		MapDAO mapDAO = new MapDAO();
		
		int mapNumber = Integer.valueOf(req.getParameter("mapNumber"));
		
		mapDAO.selectOne(mapNumber).forEach(mapVO -> {JSONObject map = new JSONObject(mapVO);maps.put(map);});
		out.print(maps);
		out.close();
		
		return null;
	}
}
