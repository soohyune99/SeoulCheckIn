package com.seoulcheckin.app.banner;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.banner.dao.BannerDAO;
import com.seoulcheckin.app.banner.vo.BannerVO;

public class AdminBannerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		BannerDAO bannerDAO = new BannerDAO();
		List<BannerVO> banners = null;
		
		banners = bannerDAO.selectList();
		System.out.println(banners);
		
		req.setAttribute("banners", banners);
		
		result.setPath("/app/admin/adminBanner.jsp");
		
		return result;
	}

}
