package com.seoulcheckin.app.visa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seoulcheckin.app.Result;

public class VisaFrontController extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }
   
   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURI = req.getRequestURI();
      String contextPath = req.getContextPath();
      String request = requestURI.substring(contextPath.length());
      Result result = null;
      
      // 비자네비게이터 페이지 요청(정적)
      if(request.equals("/visa/visanavigator.vs")) {
         result = new VisaResultController().execute(req,resp);
      }
      // 비자네비게이터 검색 결과
      else if(request.equals("/visa/movevisapage.vs")) {
         result = new Result();
         result.setPath("/app/visa/visanavigator.jsp");
      }
      
      if(result != null) {
         if(result.isRedirect()) {
            resp.sendRedirect(result.getPath());
         }else {
            RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
            dispatcher.forward(req, resp);
         }
      }
   }
}