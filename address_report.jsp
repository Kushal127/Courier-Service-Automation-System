<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Address Report</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br><h1>Address Report</h1>
<%Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from source_destni");
%>
<table border="1">
<th>Source</th>
<th>Source Address</th>
<th>Destination</th>
<th>Dest Address</th>
<th>Distance</th>
<%while(rs.next())
{%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getInt(5)%></td>
</tr>
<%}%>
</table>
<a href="./reports.jsp">BACK</a>
</center>
</body>
</html>
