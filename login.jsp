<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Welcome To Courier Service System</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFD9">
<% System.out.print("usertype "+request.getParameter("usertype"));
session.setAttribute("usertype",request.getParameter("usertype"));%>
<form action="./loginchecking.jsp">
<br>
<center>
<h1>Courier Service System</h1>

<br><br><br>
<table>
 <tr>
<td><label><b>Login</b></label></td>
<td><input name="username" type="text" value="" class="border"></td>
</tr>
<tr>
<td><label><b>password</b></label></td>
<td><input name="password" type="password" value="" class="border"></td>
</tr>
<tr>
<td></td>
<td align="center">
<input name="submit" type="submit" value="submit" class="cbutton">
<input name="cancel" type="reset" class="cbutton">
</td>
<td><a href="./home.jsp"><b>LOGOUT</b></a></td>
</tr>
</table>
<br><br><br><br>
</center>
</form>
</body>
</html>
