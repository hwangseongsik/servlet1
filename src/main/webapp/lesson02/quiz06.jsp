<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</head>
<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		"저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});

	int count = 0;
%>
<div>
	<h1>장보기 목록</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>품목</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<%
					Iterator<String> iter = goodsList.iterator();
						while (iter.hasNext()) {
						String goods = iter.next();
						count += 1;
				%>
					<th>
					<%= count %>
					</th>
					<td>
					<%= goods %>
					</td>
				<% 
					}
				%>
			</tr>
		</tbody>
	</table>
</div> 
</body>
</html>