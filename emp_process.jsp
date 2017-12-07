<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Emp process</title>
<link href="./couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
String e=request.getParameter("empname");
String d=request.getParameter("desig");
String h=request.getParameter("hno");
String a=request.getParameter("add1");
String a2=request.getParameter("add2");
String c=request.getParameter("city");
String s=request.getParameter("state");
String cou=request.getParameter("country");
if((e.equals(""))||(d.equals(""))||(h.equals(""))||(a.equals(""))||(a2.equals(""))||(c.equals(""))||(s.equals("")))
{
RequestDispatcher dis=request.getRequestDispatcher("./empreg.jsp");
dis.include(request,response);
out.println("Plz.. enter all details");
out.println("<html><body><a href='./empreg.jsp'>BACK</a></body></html>");
}
else
{
Connection con=new courierconnect().mycon();
PreparedStatement pst=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?)");
pst.setInt(1,Integer.parseInt(request.getParameter("empid")));
pst.setString(2,e);
pst.setString(3,d);
pst.setString(4,h);
pst.setString(5,a);
pst.setString(6,a2);
pst.setString(7,c);
pst.setString(8,s);
pst.setString(9,cou);
pst.executeUpdate();
out.println("<html><body><center><h2>EMPLOYEE REGISTRED SUCCESSFULLY</h2></center></body></html>");
response.setHeader("REFRESH","2;url=./empreg.jsp");
}
%>
</body>
</html>
