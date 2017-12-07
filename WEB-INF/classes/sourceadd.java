package courier;

import courier.courierconnect;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sourceadd extends HttpServlet
{
	Connection con;
	PreparedStatement pst;

	public void init(ServletConfig sc) throws ServletException
	{
		super.init(sc);
	}
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		try
		{
			res.setContentType("text/html");	
			PrintWriter pw=res.getWriter();
			courierconnect cc=new courierconnect();
			con=cc.mycon();
			pst=con.prepareStatement("insert into source_destni values(?,?,?,?,?)");
			pst.setString(1,req.getParameter("source"));
			pst.setString(2,req.getParameter("sadd"));
			pst.setString(3,req.getParameter("dest"));
			pst.setString(4,req.getParameter("dadd"));
			pst.setDouble(5,Double.parseDouble(req.getParameter("dist")));
			pst.executeUpdate();
			System.out.println("source and destination details inserted");
			pw.println("<html><body bgcolor=#3399FF><center>SOURCE INSERTED</center></body></html>");
			res.setHeader("REFRESH","2;url=./admin.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
		
		
		
		
		
		

