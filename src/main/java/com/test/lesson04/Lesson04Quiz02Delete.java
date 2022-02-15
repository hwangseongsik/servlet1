package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/site_delete")
public class Lesson04Quiz02Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter => id
		int id = Integer.valueOf(request.getParameter("id"));

		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
				
		// Delete query 수행
		String deleteQuery = "delete from `favorite` where `id`=" + id;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제 
		mysqlService.disconnection();
				
		// 목록 화면 이동 -> 리다이렉트
		response.sendRedirect("/lesson04/quiz02.jsp");
				
	}
}
