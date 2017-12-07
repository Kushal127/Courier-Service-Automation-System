package courier;

import courier.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class transaction extends HttpServlet
{
	Connection con;
	PreparedStatement pst;
	Statement st;
	ResultSet rs;
	
	public void init(ServletConfig sc)throws ServletException
	{
		super.init(sc);
	}
	public void service(HttpServletRequest request,HttpServletResponse res)
	{
		try
		{
			res.setContentType("text/html");
			PrintWriter pw=res.getWriter();
			courierconnect cc=new courierconnect();
			con=cc.mycon();
			pst=con.prepareStatement("insert into transaction values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			int t=Integer.parseInt(request.getParameter("transid"));
			System.out.println("t="+t);
			pst.setInt(1,t);
			String s=request.getParameter("sstation");
			pst.setString(2,s);
			pst.setString(3,request.getParameter("sname"));
			pst.setString(4,request.getParameter("sadd"));
			pst.setInt(5,Integer.parseInt(request.getParameter("sphone")));
			String d=request.getParameter("dstation");
			pst.setString(6,d);
			pst.setString(7,request.getParameter("rname"));
			pst.setString(8,request.getParameter("radd"));
			pst.setInt(9,Integer.parseInt(request.getParameter("rphone")));
			double qty=Double.parseDouble(request.getParameter("quantity"));
			pst.setDouble(10,qty);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from source_destni where source='"+s+"' and dest='"+d+"'");
			System.out.println("Source="+s);
			System.out.println("destination="+d);			
			rs.next();
			double dist=rs.getDouble(5);
			System.out.println("distance="+dist);
			double unitprice;
			if(dist>500)
			{
				 unitprice=10;
			}
			else 
			{
				 unitprice=15;
			}
			double total=qty*dist*unitprice;
			total=total/100;
			pst.setDouble(11,dist);
			pst.setDouble(12,unitprice);
			pst.setDouble(13,total);
			pst.executeUpdate();
			
			pw.println("<html><head><link href='./couriercss.css' type='text/css rel='stylesheet'></head>");
			pw.println("<body><center><br><br><br><br><b>DATA INSERTED</b></center></body>");
			pw.println("</html>");
			res.setHeader("refresh","2;url=./courier.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
		
		
			
			

