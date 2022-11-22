package com.seoulcheckin.app.message;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;

public class MessageTranslateController implements Execute {

	@Override
	   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      
	      resp.setContentType("text/html;charset=utf-8");
	      req.setCharacterEncoding("UTF-8");
	      PrintWriter out = resp.getWriter();
	      String messageContent = req.getParameter("messageContent");
	      out.print(nmtReturnRseult(messageContent));
	      out.close();
	      
	      return null;
	   }
	   public static String nmtReturnRseult(String original_str){
	      
	      //애플리케이션 클라이언트 아이디값";    
	      String clientId = "Wszoe2_jpqvFgFic1K9S";
	      //애플리케이션 클라이언트 시크릿값";    
	      String clientSecret = "0YOYGAS229";
	      
	      String resultString ="";
	      String englishCheck =  "^([a-zA-z0-9#?!@$%^&*-.,'\s]*)$";
	      String hangleCheck = "^([가-힣0-9#?!@$%^&*-.,'\s]*)$";
	      try {
	         //original_str 값이 우리가 변환할 값         
	         String text = URLEncoder.encode(original_str, "UTF-8");
	         
	         String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
	         URL url = new URL(apiURL);
	         HttpURLConnection con = (HttpURLConnection)url.openConnection();
	         con.setRequestMethod("POST");
	         con.setRequestProperty("X-Naver-Client-Id", clientId);
	         con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	         // post request
	         String postParams = null;
	         if(Pattern.matches(englishCheck, original_str)) {
	            postParams = "source=en&target=ko&text=" + text;
	         }else if(Pattern.matches(hangleCheck, original_str)) {
	            postParams = "source=ko&target=en&text=" + text;
	         }else {
	            return original_str;
	         }
	         con.setDoOutput(true);
	         DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	         wr.writeBytes(postParams);
	         wr.flush();
	         wr.close();
	         int responseCode = con.getResponseCode();
	         BufferedReader br;
	         if(responseCode==200) { // 정상 호출            
	            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	         }else {  // 에러 발생            
	            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	         }
	         String inputLine;
	         while ((inputLine = br.readLine()) != null) {
	            JSONObject jb = new JSONObject(inputLine);
	            jb = new JSONObject(jb.get("message").toString());
	            jb = new JSONObject(jb.get("result").toString());
	            resultString = jb.get("translatedText").toString();
	            }
	         br.close();
	         
	         } catch (Exception e) {
	            System.out.println(e);
	         }
	         return resultString;
	         }

}
