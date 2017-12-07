<%@ page  language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Courier Services Ltd..</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#99FFCC"> 
<form action="./login.jsp">
<center><br>
<h1>Login As Follows</h1><br><br>
<table>
<tr><td>
<label class="border">
<input type="radio" name="usertype" value="admin" checked>Administrator</label><br>
</td></tr>
<tr><tr></tr></tr>
<tr><td>
<label class="border">
<input type="radio" name="usertype" value="employ">Employee</label><br>
</td></tr><tr></tr><tr></tr><tr></tr><br>
<tr><td><input type="submit" value="submit" class="cbutton"></td></tr>
</table>
<br><br><br>
</center>
</form>
</body>
</html>
