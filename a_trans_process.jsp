<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Transaction Report</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="a_trans_report.jsp">
<center>
<% 
Connection con= new courierconnect().mycon(); 
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select odate from transaction");
%>

<br><h1>Transaction Report</h1><br><br>
<table>
<tr>
<td>Enter any date</td>
<td>
        <select name="odate">
	<%while(rs.next())
	{%>
	<option><%=rs.getString(1)%></option>
	<%}%>
	</select>
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" class="cbutton" value="submit"></td>
<td><a href="./reports.jsp">Back</a></td>
</tr>
</table>
</center>
</form>
</body>
</html>



