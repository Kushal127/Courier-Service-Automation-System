<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Branch Address Details</title>

<link href="couriercss.css" type="text/css" rel="stylesheet">
</head>
<script language="JavaScript">
function back()
{
document.address.action="./admin.jsp";
document.address.submit();
}
function viewall()
{
document.address.action="./viewall_source.jsp";
document.address.submit();
}
</script>
<body><br><br>
<form action="./addres_details.jsp" name="address">
<center>
<h1>Address Details</h1><br>
<%Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from sources");
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from sources order by sid desc");
%>
<table>
<tr><td align="right">Source</td>
<td><input type="text" name="source" value="HYDERABAD" readonly="" class="border" size="15"></td>
</tr>
<tr><td align="right">Address</td>
<td><textarea name="sadd" class="border" cols="11"></textarea>
</td></tr>
<tr><td align="right">Destination</td>
<td><select name="dest" class="border">
<%while(rs1.next())
{%>
<option><%=rs1.getString(2)%></option>
<%}%>
</select></td>

</tr>
<tr><td align="right">Address</td>
<td><textarea name="dadd" class="border" cols="11"></textarea>
</td>
</tr>
<tr>
<td align="right">Distance</td>
<td><input type="text" class="border" name="distance" size="15"></td>
</tr>
</table>
<table><tr>
<tr></tr>
<td><input type="submit" value="submit" class="cbutton">
<input type="reset" value="reset" class="cbutton">
<input type="submit" value="back" class="cbutton" onclick="back()">
<input type="submit" value="viewall" class="cbutton" onclick="viewall()">
</td>
</tr>
</table>
</center>
</form>
</body>
</html>
