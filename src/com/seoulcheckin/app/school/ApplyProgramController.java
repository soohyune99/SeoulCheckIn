package com.seoulcheckin.app.school;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.school.dao.SchoolDAO;
import com.seoulcheckin.app.school.vo.SchoolDTO;

public class ApplyProgramController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		SchoolDAO schoolDAO = new SchoolDAO();
		SchoolDTO schoolDTO = new SchoolDTO();
		System.out.println("넘버");
//		System.out.println(req.getParameter("schoolNumber"));
		System.out.println(req.getParameter("memberNumber"));
		System.out.println("넘버입니다");
		
		int schoolNumber = Integer.valueOf(req.getParameter("schoolNumber"));
		String schoolName = req.getParameter("schoolName");
		int memberNumber = Integer.valueOf(req.getParameter("memberNumber"));
		
		schoolDTO.setSchoolNumber(schoolNumber);
		schoolDTO.setSchoolName(schoolName);
		schoolDTO.setMemberNumber(memberNumber);
		
		schoolDAO.insert(schoolDTO);
		
		
		return null;
	}
}
