<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>source creation</title>
<link href="./couriercss.css" rel="stylesheet" type="text/css">
</head>
<script language="JavaScript">
function d()
{
document.screation.action="./admin.jsp";
document.screation.submit();
}
function back()
{
document.screation.action="./admin.jsp";
document.screation.submit();
}
</script>
<body>
<form action="./s_c_process.jsp"  name="screation">
<center>
<br><br><h1>Source Creation</h1>
    <table width="90%" border="1">
      <tr>
        <td>
          <% Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(sid) from sources");
rs.next();
%>
<table width="100%" align="center">
<tr> 
  <td>Source ID</td>
  <%int sid=1;
	int c=rs.getInt(1);
	if(c==0)
	sid=1;
	else
	sid=c+1;
  %>
              <td><input type="text" name="sid" value="<%=sid%>" class="border" readonly="yes"></td>
            </tr>
            <tr> 
              <td>Enter any place</td>
              <td><input type="text" name="source" class="border"></td>
            </tr>
				<tr>
				<td>State</td>
				<td><input type="text" name="state" class="border"></td>
				</tr>
            <tr> 
              <td></td>
              <td> <input name="submit" type="submit" class="cbutton" value="save"> 
                <input name="reset" type="reset" class="cbutton" value="clear"> 
                <input name="submit" type="submit" class="cbutton" onclick="back()" value="back"> 
               
              </td>
            </tr>
          </table>
          <div align="center"></div>
          <div align="center"></div></td>
        <td>
          <% 
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from sources order by sid");
%>
          <table width="20" align="center">
            
            <th>Source Name</th>
            <tr> 
              <td><select name="s" class="border">
                  <% while(rs1.next())
{%>
                  <option><%=rs1.getString(2)%></option>
                  <%}%>
                </select> </td>
            </tr>
          </table></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </center>
</form>
</body>
</html>
