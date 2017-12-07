<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="courier.*"%>
<html>
<head>
<title>Transaction</title>
<link href="./couriercss.css" type="text/css" rel="stylesheet">
</head>
<body>
<%! double ss;%>
<% int t=Integer.parseInt(request.getParameter("transid"));
String st=request.getParameter("sstation");
System.out.println("sstation==="+st);
String sn=request.getParameter("sname");
String sadd=request.getParameter("sadd");
int sp=Integer.parseInt(request.getParameter("sphone"));
String dt=request.getParameter("dstation");
String rn=request.getParameter("rname");
String radd=request.getParameter("radd");
int rp=Integer.parseInt(request.getParameter("rphone"));
String it=request.getParameter("itype");
int ic=Integer.parseInt(request.getParameter("icost"));
if((sn.equals(""))||(sadd.equals(""))||(sp==0)||(rn.equals(""))||(radd.equals(""))||(rp==0)||(it.equals(""))||(ic==0))
{
RequestDispatcher dis=request.getRequestDispatcher("./courier.jsp");
dis.include(request,response);
out.println("Plz.. enter all details");
out.println("<html><boby><a href='./courier.jsp'>BACK</a></body></html>");
}
else
{
Connection con=new courierconnect().mycon();
PreparedStatement pst=con.prepareStatement("insert into transaction values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
String oda=request.getParameter("odate");
System.out.println("odate=="+oda);
pst.setString(1,oda);
pst.setInt(2,t);
System.out.println("transid=="+t);
pst.setInt(3,Integer.parseInt(request.getParameter("empid")));
pst.setString(4,request.getParameter("sstation"));
pst.setString(5,sn);
pst.setString(6,sadd);
pst.setInt(7,sp);
String d=request.getParameter("dstation");
pst.setString(8,d);
pst.setString(9,rn);
pst.setString(10,radd);
pst.setInt(11,rp);
double qty=Double.parseDouble(request.getParameter("quantity"));
pst.setDouble(12,qty);
pst.setString(13,it);
pst.setInt(14,ic);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select dist from source_destni where source='"+st+"' and dest='"+dt+"'");
System.out.println("Source="+st);
System.out.println("destination="+dt);
System.out.println("before rs.nxet()");

if(rs.next())
{
System.out.println("after rs.nxet()");
 ss=rs.getDouble(1);
System.out.println("before iserting ss"+ss);
pst.setDouble(15,ss);
double total=(ss*qty)/10*1;
System.out.println("total is this="+total);
pst.setDouble(16,total);
pst.executeUpdate();
}
else
{
RequestDispatcher dis=request.getRequestDispatcher("./courier.jsp");
dis.include(request,response);
out.println("No Transaction allowed ");
out.println("<html><boby><a href='./courier.jsp'>BACK</a></body></html>");
}

}
response.sendRedirect("./trans_bill.jsp");
%>
</body>
</html>
