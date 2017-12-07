<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title></title>
</head>
<body>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:courier","courier","courier");
%>
</body>
</html>
