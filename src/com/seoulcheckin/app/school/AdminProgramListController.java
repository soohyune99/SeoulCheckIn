package com.seoulcheckin.app.school;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.myprogram.dao.MyProgramDAO;
import com.seoulcheckin.app.school.dao.SchoolDAO;
import com.seoulcheckin.app.school.vo.SchoolVO;

public class AdminProgramListController implements Execute {
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      SchoolDAO schoolDAO = new SchoolDAO();
      MyProgramDAO myProgramDAO = new MyProgramDAO();
      Result result = new Result();
      String temp = req.getParameter("page");
      HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
      HashMap<Integer, Integer> programMap = new HashMap<Integer, Integer>();
      List<SchoolVO> programs = null;

      int page = temp == null ? 1 : Integer.parseInt(temp);
      int total = schoolDAO.selectCount();

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
      
      programs = schoolDAO.selectPage(pageMap);

      programs.stream().forEach(program -> programMap.put(program.getSchoolNumber(), myProgramDAO.classLimitCount(program.getSchoolNumber())));
      
      req.setAttribute("programs", programs);
      req.setAttribute("programMap", programMap);      
      req.setAttribute("total", total);
      req.setAttribute("page", page);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
      req.setAttribute("prev", prev);
      req.setAttribute("next", next);
      result.setPath("/app/admin/adminProgram.jsp");
      
      return result;
   }
}