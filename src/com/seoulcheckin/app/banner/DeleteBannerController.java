package com.seoulcheckin.app.banner;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.banner.dao.BannerDAO;

public class DeleteBannerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BannerDAO bannerDAO = new BannerDAO();
		Result result = new Result();
		
		int bannerNumber = Integer.valueOf(req.getParameter("bannerNumber"));
		
		System.out.println(bannerNumber);
		
		bannerDAO.delete(bannerNumber);
		
		result.setPath("/banner/adminBanner.bn");
		
		return result;
	}

}
