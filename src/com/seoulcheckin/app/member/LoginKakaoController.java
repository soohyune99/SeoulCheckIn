package com.seoulcheckin.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;

public class LoginKakaoController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.addHeader("Access-Control-Allow-Origin", "*");  
		resp.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
		System.out.println("카카오 들어옴");
		
		System.out.println(req.getParameter("memberEmail"));
		System.out.println(req.getParameter("memberPhoto"));
		
		return null;
	}

}
