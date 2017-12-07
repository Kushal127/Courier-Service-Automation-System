<%@ page  language="java" import="java.sql.*,javax.servlet.*,javax.servlet.http.*" errorPage="" %>
<html>
<head>
<title>OnlineForm</title>
</head>
<body>
<center>
<form >
<%! String rvalue; %>
<%
rvalue=(String)session.getAttribute("usertype");
String uname=request.getParameter("username");
String pwd=request.getParameter("password");
System.out.println("rvalue is=="+rvalue);
System.out.println("uvalue is=="+uname);
System.out.println("pvalue is=="+pwd);
%>
<%
if(rvalue.equals("admin"))
{
	if((uname.equals("admin")) && (pwd.equals("admin")))
	{
		System.out.println("in admin uname and pwd");
		response.sendRedirect("./admin.jsp");
	}
	else 
	{	System.out.println("back admin");
		response.sendRedirect("home.jsp");
	}
} 
else if(rvalue.equals("employ"))
{
	System.out.println("in employ");
	if((uname.equals("employ")) && (pwd.equals("employ")))
	{
		System.out.println("in employ uname and pwd");
		response.sendRedirect("./employee.jsp");
	}
	else 
	{
		System.out.println("back from employ else");
		response.sendRedirect("home.jsp");
	}
}
%>
</form>
</center>
</body>
</html>
