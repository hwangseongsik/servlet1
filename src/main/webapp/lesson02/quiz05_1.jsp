<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</head>
<body>
<%
	int number = Integer.valueOf(request.getParameter("number"));
	String[] unitArr = request.getParameterValues("unit");
%>

<div class="container">
	<h1>길이 변환 결과</h1>
	
	<h3><%= number %>cm</h3>
	<hr>
	
	<h2>
		<%
			for (String unit : unitArr) {
				if (unit.equals("inch")) {
					out.print((number * 0.393701) + "in<br>");
				} else if (unit.equals("yard")) {
					out.print((number * 0.0109361) + "yd<br>");
				} else if (unit.equals("feet")) {
					out.print((number * 0.0328084) + "ft<br>");
				} else if (unit.equals("meter")) {
					out.print((number * 0.01) + "m");
				}
			}
		%>
	</h2>
</div>
</body>
</html>