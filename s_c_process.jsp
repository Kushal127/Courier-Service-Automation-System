<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Source data inserted</title>
<link href="./couriercss.css" rel="stylesheet" type="text/css">
</head>
<body>
<% 
Connection con=new courierconnect().mycon();
Statement st=con.createStatement();
String s2=request.getParameter("source").trim();
String s1=s2.toUpperCase();
String state=request.getParameter("state");
ResultSet rs=st.executeQuery("select * from sources where sname='"+s1+"'");
if((s1.equals(""))||(state.equals("")))
{
RequestDispatcher dis=request.getRequestDispatcher("./s_creation.jsp");
dis.include(request,response);
out.println("source should not be null");
out.println("<html><boby><a href='./s_creation.jsp'>BACK</a></body></html>");
}
else if(rs.next())
{
RequestDispatcher dis=request.getRequestDispatcher("./s_creation.jsp");
dis.include(request,response);
out.println("source already exists");
out.println("<html><boby><a href='./s_creation.jsp'>BACK</a></body></html>");
}
else 
{
PreparedStatement pst=con.prepareStatement("insert into sources values(?,?,?)");
pst.setInt(1,Integer.parseInt(request.getParameter("sid")));
pst.setString(2,s1);
pst.setString(3,state);
pst.executeUpdate();
out.println("<html><body><center><br><br><br><h2>SOURCE CREATED SUCCESSFULLY</h2>");
response.setHeader("REFRESH","2;url=./s_creation.jsp");
out.println("</center></body></html>");
}
%>
</body>
</html>
