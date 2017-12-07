<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Address Details Form</title>

<link href="couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<% 
String s=request.getParameter("source");
String sa=request.getParameter("sadd");
String d=request.getParameter("dest");
String da=request.getParameter("dadd");
double distance=0.0;
double di=Double.parseDouble(request.getParameter("distance"));
if ((sa.equals(""))||(da.equals(""))||(di==distance))
{
RequestDispatcher dis=request.getRequestDispatcher("./address.jsp");
dis.include(request,response);
out.println("Plz.. enter all details");
out.println("<html><boby><a href='./address.jsp'>BACK</a></body></html>");
}
else
{
Connection con=new courierconnect().mycon();
PreparedStatement pst=con.prepareStatement("insert into source_destni values(?,?,?,?,?)");
System.out.println("this is from jsp");
pst.setString(1,s);
pst.setString(2,sa);
pst.setString(3,d);
pst.setString(4,da);
pst.setDouble(5,di);
pst.executeQuery();
out.println("Data Inserted");
response.setHeader("REFRESH","2;url=./address.jsp");
}
%>
</body>
</html>
