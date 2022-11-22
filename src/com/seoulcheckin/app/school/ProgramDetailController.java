package com.seoulcheckin.app.school;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.school.dao.SchoolDAO;
import com.seoulcheckin.app.school.vo.SchoolVO;

public class ProgramDetailController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		SchoolVO schoolVO = new SchoolVO();
		SchoolDAO schoolDAO = new SchoolDAO();
		
		int schoolNumber = Integer.valueOf(req.getParameter("schoolNumber"));
		
		System.out.println(req.getParameter("schoolNumber"));
		
		schoolVO = schoolDAO.selectDetail(schoolNumber);
		JSONObject json = new JSONObject(schoolVO);
		
		
		out.print(json);
		System.out.println(json);
		out.close();
		
		
		return null;
	}
}
