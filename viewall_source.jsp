<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>View all</title>
<link href="couriercss.css" type="text/css" rel="stylesheet">
</head>
<script language="JavaScript">
function back()
{
document.viewsource.action="./address.jsp";
document.viewsource.submit();
}
</script>
<body>
<form name="viewsource">
<center>
<br><br><h1>Address Details</h1>
<% Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from source_destni");
%>
<table border="1">
<th>Source</th>
<th>Source address</th>
<th>Destination</th>
<th>Destination address</th>
<th>Distance(Kilometers)</th>
<% while(rs.next())
{
%>
<tr>
<td align="center"><%=rs.getString(1)%></td>
<td align="center"><%=rs.getString(2)%></td>
<td align="center"><%=rs.getString(3)%></td>
<td align="center"><%=rs.getString(4)%></td>
<td align="center"><%=rs.getInt(5)%></td>
</tr>
<%}%>
</table>
<table>
<tr>
<td><input type="submit" value="back" class="cbutton" onClick="back()"></td></tr>
</table>
</center>
</form>
</body>
</html>
