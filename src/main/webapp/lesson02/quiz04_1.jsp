<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산결과</title>


<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</head>
<body>
<% 
	int number1 = Integer.valueOf(request.getParameter("number1"));
	String calculate = request.getParameter("calculate");
	int number2 = Integer.valueOf(request.getParameter("number2"));
	
	double result = 0;
	String printCalculate = null; 
	
	switch (calculate) {
	case "plus":
		result = number1 + number2;
		printCalculate = "+";
		break;
	case "minus":
		result = number1 - number2;
		printCalculate = "-";
		break;
	case "multiple":
		result = number1 * number2;
		printCalculate = "X";
		break;
	case "divide":
		result = number1 / number2;
		printCalculate = "/";
	}
%>

<div class="container">
	<h1>계산 결과</h1>
	<div class="display-3">
	<%
		out.print(number1 + " " + printCalculate + " " + number2 + " = ");
	%>
		<span class="text-info"><%= result %></span>
	</div>
</div>
</body>
</html>