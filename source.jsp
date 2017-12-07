<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<%!Connection con;%>
<html>
<head>
<title>Select Your source here</title>
<link href="couriercss.css" rel="stylesheet" style="text/css">
</head>
<script language="JavaScript">
function back()
{
document.source.action="./employee.jsp";
document.source.submit();
}
</script>
<body>
<form name="source" action="./employee.jsp" method="post">
<center>
<% 
Connection con= new courierconnect().mycon(); 
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from sources");
%>
<table>
<tr>
<td align="justify">source station</td>
<td><select name="source">
<% while (rs.next())
{
%>
<option><%=rs.getString(2)%></option>
<%}%>

</select></td>
</tr>
<tr>
<td><input type="submit" class="cbutton" value="submit" onClick="back()"></td>
</tr>
</table>
</center>
</form>
</body>
</html>
