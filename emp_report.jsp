<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Employee Report</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<% Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from employee");
%>
<br><h1>Employee Report</h1><br>
<table border="1">
<th>Emp id</th>
<th>Emp name</th>
<th>Designation</th>
<th>HNo</th>
<th>Add1</th>
<th>Add2</th>
<th>City</th>
<th>State</th>
<th>Country</th>
<tr>
<% while(rs.next())
{%>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
</tr>
<%}%>
</table>
<a href="./reports.jsp">BACK</a>
</center>
</body>
</html>
