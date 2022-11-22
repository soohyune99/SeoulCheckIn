package com.seoulcheckin.app.banner;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.banner.dao.BannerDAO;

public class SelectController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		BannerDAO bannerDAO = new BannerDAO();
		JSONArray banners = new JSONArray();
		
		/*
		 * bannerDAO.selectAll(bannerNumber).forEach(bannerVO -> {JSONObject banner =
		 * new JSONObject(bannerVO); banners.put(banner);});
		 */
		
		bannerDAO.selectAll().stream().map(bannerVO -> new JSONObject(bannerVO)).forEach(banner -> banners.put(banner));
		
		out.print(banners.toString());
		out.close();
		
		return null;
	}

}
