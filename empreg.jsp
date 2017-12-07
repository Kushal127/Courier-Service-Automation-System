<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Employee registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="couriercss.css" type="text/css" rel="stylesheet">
</head>
<script language="JavaScript">
function back()
{
document.emp.action="./admin.jsp";
document.emp.submit();
}
</script>
<body>
<form name="emp" action="./emp_process.jsp">
<center>
<h1>Employee details</h1>
<% Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(empid) from employee");
%>
<table>
<tr>
<td>Employee id</td>
<% rs.next();
int empid=100;
int c=rs.getInt(1);
if (c==0)
empid=100;
else
empid=c+1;
%>
<td><input type="text" name="empid" value="<%=empid%>" readonly="empid" class="border"></td>
</tr>
<tr>
<td>Employee name</td>
<td><input type="text" name="empname" class="border"></td>
</tr>
<tr>
<td>Designation</td>
<td><input type="text" name="desig" class="border"></td>
</tr>
<tr>
<td></td>
<td><h3>Mailing address</h3></td>
</tr>
<tr>
<td>H.no</td>
<td><input type="text" name="hno" class="border"></td>
</tr>
<tr>
<td>Add1</td>
<td><input type="text" name="add1" class="border"></td>
</tr>
<tr>
<td>Add2</td>
<td><input type="text" name="add2" class="border"></td>
</tr>
<tr>
<td>City</td>
<td><input type="text" name="city" class="border"></td>
</tr>
<tr>
<td>State</td>
<td><input type="text" name="state" class="border"></td>
</tr>
<tr>
<td>Country</td>
<td><input type="text" name="country" value="India" readonly="India" class="border"></td>
</tr>
<tr></tr>
<tr>
<td></td>
<td><input type="submit" class="cbutton" value="save">
<input type="submit" class="cbutton" value="back" onClick="back()">
<input type="reset" class="cbutton" value="clear"></td>
</tr>
</table>
</center>
</form>
</body>
</html>
