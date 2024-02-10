<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HMS</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<%
	String username=(String)session.getAttribute("user_");  
	//out.print("Hello "+username);
	session.setAttribute("user_", username);
%>
<h1>Product are listed below ${user_}</h1><br><br>
<table>
  <tr>
    <th>Products</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Shirt</td>
    <td>499</td>
  </tr>
  <tr>
    <td>Pant</td>
    <td>699</td>
  </tr>
</table>
</body>
</html>