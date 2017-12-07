<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Source - Destination</title>
<link href="./couriercss.css" rel="stylesheet" type="text/css">
</head>
<script language="JavaScript">
function back()
{
document.source.action="./admin.jsp";
document.source.submit();
}
</script>
<body>
<center>
<form name="source" action="./source_process.jsp">
<br><h1>Transaction details</h1><br>
<table>
<tr>
<td>From</td>
<td><input type="text" name="source" class="border"></td>
</tr>
<tr>
<td>To</td>
<td><input type="text" name="dest" class="border"></td>
</tr>
<tr>
<td>Distance</td>
<td><input type="text" name="dist" class="border"></td>
</tr>
<tr></tr>
<tr>
<td></td>
<td><input type="submit" value="submit" class="cbutton">
<input type="reset" value="reset" class="cbutton">
<input type="submit" value="back" class="cbutton" onClick="back()">
</td>
</tr>
</table>
</form>
</center>
</body>
</html>
