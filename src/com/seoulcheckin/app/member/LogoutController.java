package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;

public class LogoutController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      Result result = new Result();
      HttpSession session = req.getSession();
      PrintWriter out = resp.getWriter();

      session.invalidate();

      
      return null;
   }

}