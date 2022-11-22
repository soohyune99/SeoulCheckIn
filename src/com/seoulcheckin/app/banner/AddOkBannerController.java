package com.seoulcheckin.app.banner;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.banner.dao.BannerDAO;
import com.seoulcheckin.app.banner.vo.BannerVO;

public class AddOkBannerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		BannerDAO bannerDAO = new BannerDAO();
		BannerVO bannerVO = new BannerVO();
		Result result = new Result();	
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/banner/";
		int fileSize = 1024 * 1024 * 5;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		String fileName = fileNames.nextElement();
			
		String bannerName = multipartRequest.getFilesystemName(fileName);
		bannerVO.setBannerName(bannerName);

		bannerDAO.insert(bannerName);
		
		result.setPath("/banner/adminBanner.bn");
		
		return result;
	}

}
