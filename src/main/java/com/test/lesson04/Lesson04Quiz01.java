package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
	
		// DB 접속 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// insert query
		String insertQuery = "insert into `real_estate` (`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL)";
		try {
			mysql.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// select query
		String selectQuery = "select * from `real_estate` order by `id` desc limit 10";
		
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultSet = mysql.select(selectQuery);
			while (resultSet.next()) {
			out.print("매물 주소: ");
			out.print(resultSet.getString("address"));
			out.print(", 면적: ");
			out.print(resultSet.getInt("area"));
			out.print(", 타입: ");
			out.print(resultSet.getString("type"));
			out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 접속 연결 해제
		mysql.disconnection();
		
	}
	
}
