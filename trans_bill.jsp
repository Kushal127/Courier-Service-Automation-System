<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Transaction Bill to Customer</title>
<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<h1>Transaction Bill</h1>
<% 
Connection con1=new courierconnect().mycon();
System.out.println("==========================connected");
Statement st=con1.createStatement();
System.out.println("==========================stmt created is");
ResultSet rs=st.executeQuery("select max(transid) from transaction");
System.out.println("==========================result set executed");
%>
<%! int trans;%>
<%
while(rs.next())
{
System.out.println("==========================In while");
trans=rs.getInt(1);
System.out.println("trans-id is"+trans);
}
Statement st1=con1.createStatement();
ResultSet rs1=st1.executeQuery("select odate,transid ,empid,source,sname,sadd,sphone,dest,rname,radd,rphone,quantity,itype,icost,distance,total from transaction where transid="+trans);
System.out.println("trans-id is99999999999999999999999999");

while(rs1.next())
{
System.out.println("trans-id is7777777777777777777777777777777777777777777777777");

%>
<table border="1">
<tr>
	<td>Date of Transaction</td>
	  <td><%=rs1.getString(1)%></td>
</tr>
<tr>
	<td>TranseID</td>
	<td><%=rs1.getInt(2)%></td>
</tr>
<tr>
	<td>EmpID</td>
	<td><%=rs1.getInt(3)%></td>
</tr>
<tr>
	<td>Source</td>
	<td><%=rs1.getString(4)%></td>
</tr>
<tr>
	<td>SName</td>
	<td><%=rs1.getString(5)%></td>
</tr>
<tr>
	<td>SAdde</td>
	<td><%=rs1.getString(6)%></td>
</tr>
<tr>
	<td>SPhone</td>
	<td><%=rs1.getInt(7)%></td>
</tr>
<tr>
<td>Receiving Station</td>
<td><%=rs1.getString(8)%></td>
</tr>
<tr>
<td>Receiver Name</td>
<td><%=rs1.getString(9)%></td>
</tr>
<tr>
<td>Receiver Add</td>
<td><%=rs1.getString(10)%></td>
</tr>
<tr>
	<td>RPhone</td>
	<td><%=rs1.getInt(11)%></td>
</tr>
<tr>
<td>Quantity</td>
<td><%=rs1.getDouble(12)%></td>
</tr>
<tr>
	<td>Itype</td>
	<td><%=rs1.getString(13)%></td>
</tr>
<tr>
<td>Item Cost</td>
<td><%=rs1.getDouble(14)%></td>
</tr>
<tr>
	<td>Distance</td>
	<td><%=rs1.getInt(15)%></td>
</tr>
<tr>
	<td>Total (in Rupees)</td>
	<td><%=rs1.getDouble(16)%></td>
</tr>

</table> <%}%><br>
<a href="./courier.jsp">BACK</a>
</center>
</body>
</html>
