<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food");
		String fruit = request.getParameter("fruit");
	%>
	
	<table border=1>
		<tr>
			<th>별명</th>
			<td><%=nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>과일</th>
			<td><%=fruit %></td>
		</tr>
		<tr>
			<th>음식</th>
			<td><%
				String result = "";
				for (String food : foodArr) {
					result += food;
					result += ", ";
				}
				out.print(result.substring(0,result.length()-2));
			%></td>
		</tr>
	</table>
</body>
</html>