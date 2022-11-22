package com.seoulcheckin.app.school;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.school.dao.SchoolDAO;

public class DeleteProController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SchoolDAO schoolDAO = new SchoolDAO();

		String[] schoolNumbers = req.getParameter("schoolNumber").split(" ");
		
		for (String schoolNumber : schoolNumbers) {
			if(schoolNumber == "") {continue;}
			schoolDAO.deleteProgram(Integer.valueOf(schoolNumber.trim()));		
		}
		return null;
	}
}
