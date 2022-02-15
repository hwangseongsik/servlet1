package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(getParameter("age"));
		
//		out.println("Get Method 호출");
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// JSON(Javascript Object Notation)으로 response 구성하기
		// {"user_id":"hss8559", "name":"황성식", "age":30}
		
		out.print("{\"user_i\":\"" + userId + "\", \"name\":\"" + name +
				"\"age\":" + age + "}");
		
		
	}

	private String getParameter(String string) {
		// TODO Auto-generated method stub
		return null;
	}
}
