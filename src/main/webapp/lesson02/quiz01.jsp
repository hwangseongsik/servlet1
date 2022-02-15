<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	// 1. 합계
	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
%>

<%
	// 2. 평균
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	
	double average = (double)sum / scores.length;
%>

<% 
	// 3. 채점 결과
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
	}
	
	// 4. 나이 구하기
	String birthDay = "20010820";
	String yearStr = birthDay.substring(0, 4);
	//out.print(yearStr);
	int age = 2022 - Integer.valueOf(yearStr) + 1;
%>

<h1>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h1>
<h1>평균 점수는 <%= average %>점 입니다.</h1>
<h1>채점 결과는 <%= score %>점 입니다.</h1>
<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>
</body>
</html>