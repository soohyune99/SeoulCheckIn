package com.seoulcheckin.app.school;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.school.dao.SchoolDAO;
import com.seoulcheckin.app.school.vo.SchoolVO;

public class AddProgramController implements Execute {
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      SchoolDAO schoolDAO = new SchoolDAO();
      SchoolVO schoolVO = new SchoolVO();
      Result result = new Result();

      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/school/";
      int fileSize = 1024 * 1024 * 5;

      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());

      String schoolName = multipartRequest.getParameter("schoolName");
      String schoolTime = multipartRequest.getParameter("schoolTime");
      int schoolLimitCount = Integer.valueOf(multipartRequest.getParameter("schoolLimitCount"));
      String schoolOpeningDate = multipartRequest.getParameter("schoolOpeningDate");
      String schoolClosingDate = multipartRequest.getParameter("schoolClosingDate");
      String schoolAddress = multipartRequest.getParameter("schoolAddress");
      String schoolTeacherName = multipartRequest.getParameter("schoolTeacherName");
      String schoolPhone = multipartRequest.getParameter("schoolPhone");
      String schoolIntroduce = multipartRequest.getParameter("schoolIntroduce");
      String schoolPhoto = multipartRequest.getFilesystemName("schoolPhoto");

      schoolVO.setSchoolName(schoolName);
      schoolVO.setSchoolTeacherName(schoolTeacherName);
      schoolVO.setSchoolPhone(schoolPhone);
      schoolVO.setSchoolAddress(schoolAddress); schoolVO.setSchoolTime(schoolTime);
      schoolVO.setSchoolIntroduce(schoolIntroduce);
      schoolVO.setSchoolOpeningDate(schoolOpeningDate);
      schoolVO.setSchoolClosingDate(schoolClosingDate);
      schoolVO.setSchoolPhoto(schoolPhoto);
      schoolVO.setSchoolLimitCount(schoolLimitCount);
      schoolVO.setSchoolStatus("신청 가능");
      schoolVO.setSchoolPhoto(schoolPhoto);

      schoolDAO.insert(schoolVO);

      result.setPath("/school/adminprogramlist.sc");

      return result;

   }
}