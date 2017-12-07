package courier;
import java.io.*;
import java.sql.*;
public class courierconnect 
{
	public Connection con;
	public PreparedStatement pst=null;
	public Statement st=null;
	public ResultSet rs=null;

	public Connection mycon()
	{
		try
		{	
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:courier","courier","courier");

		}
		catch(SQLException s)
		{
			s.printStackTrace();
			System.out.println("Sql exception......");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Generic exception------");
		}
	return con;
	}
	
}
