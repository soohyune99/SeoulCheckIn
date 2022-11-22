package com.seoulcheckin.app.school;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.school.dao.SchoolDAO;

public class ProgramListController implements Execute {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		
		
		JSONArray schools = new JSONArray();
		PrintWriter out = resp.getWriter();
		
		SchoolDAO schoolDAO = new SchoolDAO();
		schoolDAO.selectAll().stream().map(schoolVO -> new JSONObject(schoolVO)).forEach(school -> schools.put(school));

		System.out.println("컨트롤러 들어옴");
		System.out.println(schools.toString());
		out.print(schools.toString());
		out.close();
		
		return null;
		
	}
}
