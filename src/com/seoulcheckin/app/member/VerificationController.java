package com.seoulcheckin.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.seoulcheckin.app.Execute;
import com.seoulcheckin.app.Result;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class VerificationController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("컨트롤러");
		String api_key = "NCSSPLLWZCTD7ET7";
		String api_secret = "QMRPJQGEX3TZFCLXL0E56JUCSE3UJTKX";
		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
		Message coolsms = new Message(api_key, api_secret);
		HashMap<String, String> params = new HashMap<String, String>();
		PrintWriter out = resp.getWriter();
		
		int verificationNumber = (int)(Math.random() * 10000);
		if(String.valueOf(verificationNumber).length() < 4) {
			verificationNumber = 0 + verificationNumber;
		}
		
		System.out.println(verificationNumber);
		
		params.put("to", memberPhoneNumber);
		params.put("from", memberPhoneNumber);
		params.put("type", "SMS");
		params.put("text", "[서울체크인]\n인증번호 " + verificationNumber + "입니다.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject)coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
		
		out.print(verificationNumber);
		out.close();
		
		return null;
	}

}
