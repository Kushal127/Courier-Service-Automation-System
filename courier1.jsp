<%@ page  language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Courier Service</title>
<link href="./couriercss.css" type="text/css" rel="stylesheet">
</head>
<body>
<br><br>
<form action="./courier">
<h1>Transaction Form</h1><br>
<table width="50%">
<center>
<tr>
<td align="justify">Customer Name</td>
<td><input type="text" name="custname" class="border"></td>
</tr>
<tr>
<td align="justify">Customer Address</td>
<td><input type="text" name="add" class="border"></td>
</tr>
<tr>
<td align="justify">Phone Number</td>
<td><input type="text" name="phone" class="border"></td>
</tr>
<tr>
<td align="justify">Source Station</td>
<td><input type="text" name="source" class="border"></td>
</tr>
<tr>
<td align="justify">Destination Station</td>
<td><input type="text" name="dest" class="border"></td>
</tr>
<tr>
<td align="justify">Destination address</td>
<td><input type="text" name="destadd" class="border"></td>
</tr>
<tr>
<td align="justify">Quantity <font color="#FF0080">[between]</font></td>
<td><select name="quantity" class="border">
<option>0.0 TO <=0.5 Kg</option>
<option>0.5 To <=1.0 Kg</option>
<option>1.0 To <=1.5 Kg</option>
<option>1.5 T0 <=2.0 Kg</option>
<option>2.0 To <=2.5 Kg</option>
<option>2.5 To <=3.0 Kg</option>
<option>3.0 To <=3.5 Kg</option>
<option>3.5 To <=4.0 Kg</option>
<option>4.0 To <=4.5 Kg</option>
<option>4.5 To <=5.0 Kg</option>
</select></td>
</tr>
<tr>
<td align="justify">Price</td>
<td><input type="text" name="price" class="border"></td>
</tr>
</center>
</table><br>
<table>
<tr><td>
<input type="submit" value="SAVE" class="cbutton">
<input type="submit" value="BACK" class="cbutton">
<input type="reset" value="CLEAR" class="cbutton">
<input type="submit" value="DELETE" class="cbutton">
<input type="submit" value="MODIFY" class="cbutton">
</td></tr>
</table>
</form>
</body>
</html>
