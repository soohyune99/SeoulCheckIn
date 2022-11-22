package com.seoulcheckin.app.map;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.map.dao.MapDAO;
import com.seoulcheckin.app.map.vo.MapVO;
import com.seoulcheckin.app.school.vo.SchoolVO;

public class AddMapOkController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      System.out.println("들어옴");
      
      req.setCharacterEncoding("UTF-8");
      MapDAO mapDAO = new MapDAO();
      MapVO mapVO = new MapVO();
      Result result = new Result();

      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/map/";
      int fileSize = 1024 * 1024 * 5;

      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());

      String mapClassification = multipartRequest.getParameter("mapClassification");
      String mapName = multipartRequest.getParameter("mapName");
      String mapAddress = multipartRequest.getParameter("mapAddress");
      String mapPhone = multipartRequest.getParameter("mapPhone");
      String mapPrice = multipartRequest.getParameter("mapPrice");
      String mapIntroduce = multipartRequest.getParameter("mapIntroduce");
      String mapHouseOpeningDate = multipartRequest.getParameter("mapHouseOpeningDate");
      String mapHouseTrading = multipartRequest.getParameter("mapHouseTrading");
      String mapJobPayType = multipartRequest.getParameter("mapJobPayType");
      String mapJobClosingDate = multipartRequest.getParameter("mapJobClosingDate");
      String mapLandmarkTime = multipartRequest.getParameter("mapLandmarkTime");
      String mapPhoto = multipartRequest.getFilesystemName("mapPhoto");

      System.out.println(mapClassification);
      
      mapVO.setMapClassification(mapClassification);
      mapVO.setMapName(mapName);
      mapVO.setMapAddress(mapAddress);
      mapVO.setMapPhone(mapPhone);
      mapVO.setMapPrice(mapPrice);
      mapVO.setMapIntroduce(mapIntroduce);
      mapVO.setMapPhoto(mapPhoto);
      mapVO.setMapHouseOpeningDate(mapHouseOpeningDate);
      mapVO.setMapHouseTrading(mapHouseTrading);
      mapVO.setMapHouseType(mapHouseTrading);
      mapVO.setMapJobPayType(mapJobPayType);
      mapVO.setMapJobClosingDate(mapJobClosingDate);
      mapVO.setMapLandmarkTime(mapLandmarkTime);
      
      
      mapDAO.insert(mapVO);

      result.setPath("/map/adminMaplist.mp");

      return result;
   }

}