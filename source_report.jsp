<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Source Report</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<br><h1>Source Details</h1>
<% Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from sources order by sid");
%>
<table border="1">
<th>Source Id</th>
<th>Source Name</th>
<%while(rs.next())
{%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
</tr>
<%}%>
</table>
<a href="./reports.jsp">BACK</a>
</center>
</body>
</html>
