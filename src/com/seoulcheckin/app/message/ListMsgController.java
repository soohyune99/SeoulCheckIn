package com.seoulcheckin.app.message;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;
import com.seoulcheckin.app.message.dao.MessageDAO;

public class ListMsgController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		
		int messageSendEmail = Integer.valueOf(req.getParameter("messageSendEmail"));
		
		MessageDAO messageDAO = new MessageDAO();
		PrintWriter out = resp.getWriter();
		
		JSONArray messages = new JSONArray();
		messageDAO.selectAll(messageSendEmail).forEach(messageDTO -> {JSONObject message = new JSONObject(messageDTO); messages.put(message);});
		
		System.out.println("LIST");
		System.out.println(messages.toString());
		out.print(messages.toString());
		out.close();
		return null;
	}

}
