<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controller.DBController" %>
<%@ page import="controller.Data" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
	<label for="name">Name:</label><br>
	<input id="name" type="text"><br>
	<label for="mail">Mail:</label><br>
	<input id="mail" type="text"><br>
	<label for="phone">Phone:</label><br>
	<input id="phone" type="text"><br>
	<label for="birthday">Birthday:</label><br>
	<input id="birthday" type="date" placeholder="2014-09-18"><br>
	<p><button id="add">新增</button>&nbsp<button id="modify">修改</button>&nbsp<button id="delete">刪除</button></p>
	<table>
	<tr>
	<th>
	Id
	</th>
	<th>
	Name
	</th> 
	<th>
	Mail
	</th>
	<th>
	Phone
	</th>
	<th>
	Birthday
	</th>
	</tr>
	<% 
		DBController dbc = new DBController();
		ArrayList<Data> temp = dbc.getData();
		for(int i=0; i<temp.size(); i++)
		{
			out.println("<tr>");
			out.println("<td>"+temp.get(i).id+"</td>");
			out.println("<td>"+temp.get(i).name+"</td>");
			out.println("<td>"+temp.get(i).mail+"</td>");
			out.println("<td>"+temp.get(i).phone+"</td>");
			out.println("<td>"+temp.get(i).birthday+"</td>");
			out.println("</tr>");
		}
	%>
	</table>
	
</body>
</html>