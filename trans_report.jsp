<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Transaction Report</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br><h1>Transaction Report</h1>
<%Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from transaction");
%>
<table border="1">
<th>Transaction Date</th>
<th>Transaction Id</th>
<th>Employee Id</th>
<th>SourceStation</th>
<th>SourceName</th>
<th>Source Address</th>
<th>SourcePhone</th>
<th>Destination</th>
<th>Dest Name</th>
<th>Dest Address</th>
<th>Dest Phone</th>
<th>Quantity</th>
<th>Item Type</th>
<th>Item Cost</th>
<th>Distance</th>
<th>Total</th>
<% while(rs.next())
{%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getInt(2)%></td>
<td><%=rs.getInt(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getInt(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(10)%></td>
<td><%=rs.getInt(11)%></td>
<td><%=rs.getDouble(12)%></td>
<td><%=rs.getString(13)%></td>
<td><%=rs.getDouble(14)%></td>
<td><%=rs.getInt(15)%></td>
<td><%=rs.getDouble(16)%></td>
</tr>
<%}%>
</table>
<a href="./all_trans_report.html">BACK</a>
</center>
</body>
</html>
