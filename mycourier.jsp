<%@ page language="java" import="java.sql.*,javax.servlet.*,javax.servlet.http.*" errorPage="" %>
<%@ page import="courier.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Courier Service</title>
<link href="./couriercss.css" type="text/css" rel="stylesheet">
</head>
<script language="JavaScript">
function back()
{
document.trans.action="./employee.jsp";
document.trans.submit();
}
</script>
<body>
<% 
Connection con= new courierconnect().mycon(); 
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
ResultSet rs=st.executeQuery("select * from sources order by sid");
ResultSet rs1=st1.executeQuery("select * from sources order by sid desc");
ResultSet rs2=st2.executeQuery("select max(transid) from transaction");
ResultSet rs3=st3.executeQuery("select * from employee");
session=request.getSession(true); 
String sst=session.getAttribute("xyz").toString();
if(sst.equals(""))
{
sstation="HYDERABAD";
}
else
{
sstation=sst;
}
System.out.println("sstation====sst===="+sstation);
System.out.println("xyzsst----------"+sst);%>
<%!String s=null; %>
<%!String sstation=null; %>

<%
HttpSession ses1=request.getSession(true);
s=(String)ses1.getValue("xyz");
System.out.println("svalue-------------------------"+s);
if(s.equals(""))
sstation="HYDERABAD";
else
sstation=s;
%>
<form action="./trans_process.jsp" name="trans" method="post">
<center>
<h1>Transaction Form</h1><br>
<table width="50%" align="left">
<tr>
  <td>Transaction Date</td>
      <td>
        <% 
	java.util.Date d1= new  java.util.Date();
   	java.sql.Date d= new java.sql.Date(d1.getYear(),d1.getMonth(),d1.getDate());
   	System.out.println("date"+d);

	%>
        <font color="#FF0000"> 
        <input name="odate" type="text" id="odate"  value ="<%=d%>" readonly="" class="border">
        </font> </font></td>
</tr>
<tr>
<td align="justify">Transaction id</td>
<%
rs2.next();
int transid=1000;
int c=rs2.getInt(1);
System.out.println("c="+c);
if (c==0)
transid=1000;
else 
transid=c+1;
System.out.println("transid="+transid);
%>
<td><input type="text" name="transid" value="<%=transid%>" readonly="transid" class="border"></td>
</tr>
<tr>
<td>Emp id</td>
<td><select name="empid" class="border">
<% while(rs3.next())
{%>
<option><%=rs3.getInt(1)%></option>
<%}%>
</select>
</td>
</tr>
<tr>
<td align="justify">Source Station</td>
<td><select name="sstation" class="border">
<option><%=sstation%></option>
</select>
</td>
</tr>
<tr>
<td align="justify">Sender Name</td>
<td><input type="text" name="sname" class="border"></td>
</tr>
<tr>
<td align="justify">Sender Address</td>
<td><textarea name="sadd" cols="15" rows="2" class="border"></textarea></td>
</tr>
<tr>
<td align="justify">Sender phone</td>
<td><input type="text" name="sphone" class="border"></td>
</tr>


</table>

<table width="50%" align="right">
<tr>
<td align="justify">Destination Station</td>
<td><select name="dstation" class="border">
<% while(rs1.next())
{%>
<option><%=rs1.getString(2)%></option>
<%}%>
</select></td>
</tr>
<tr>
<td>Receiver Name</td>
<td><input type="text" name="rname" class="border"></td>
</tr>
<tr>
<td align="justify">Receiver address</td>
<td><textarea name="radd" cols="15" rows="2" class="border"></textarea>
</td>
</tr>
<tr>
<td>Receiver phone</td>
<td><input type="text" name="rphone" class="border"></td>
</tr>
<tr>
<td>Item type</td>
<td><input type="text" name="itype" class="border"></td>
</tr>
<tr>
<td>Item cost</td>
<td><input type="text" name="icost" class="border"></td>
</tr>
<tr>
<td align="justify">Quantity <font color="#FF0080">[between]</font></td>
<td><select name="quantity" class="border">
<option value="0.5">>0.0 TO <=0.5 Kg</option>
<option value="1.0">>0.5 To <=1.0 Kg</option>
<option value="1.5">>1.0 To <=1.5 Kg</option>
<option value="2.0">>1.5 T0 <=2.0 Kg</option>
<option value="2.5">>2.0 To <=2.5 Kg</option>
<option value="3.0">>2.5 To <=3.0 Kg</option>
<option value="3.5">>3.0 To <=3.5 Kg</option>
<option value="4.0">>3.5 To <=4.0 Kg</option>
<option value="4.5">>4.0 To <=4.5 Kg</option>
<option value="5.0">>4.5 To <=5.0 Kg</option>
</select></td>
</tr>

</table>
<br>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
	<p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="100%" height="62" align="center">
	<center>
      <tr> 
        <td height="56" align="center"> 
		<input name="submit" type="submit" class="cbutton" value="SUBMIT"> 
          <input name="submit" type="submit" class="cbutton" value="BACK" onClick="back()">
		   <input name="reset" type="reset" class="cbutton" value="CLEAR"> 
          <input name="submit" type="submit" class="cbutton" value="DELETE">
		   <input name="submit" type="submit" class="cbutton" value="MODIFY"> 
        </td>
      </tr>
	  </center>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </center>
</form>
</body>
</html>

