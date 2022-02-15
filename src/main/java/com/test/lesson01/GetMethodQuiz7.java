package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz7")
public class GetMethodQuiz7 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		if (!address.contains("서울시")) {
			out.print("<html><head><title>주문 결과</title></head><body>배달 불가 지역입니다.");
		} else {
			out.print("<html><head><title>주문 결과</title></head><body>" + address);
		}
		
		if (card.contains("신한카드")) {
			out.print(" 결제 불가 카드입니다.");
		} else { 
			out.print("<b> 배달준비중</b><br>");
		}
		
		out.print("결제금액:" + price + "원</body></html>");
	
		
	}
}
