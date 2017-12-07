package lalith;
import lalith.*;
import java.sql.*;
import java.util.*;

public class mybean 
{
	private String transacno=null;
	private String custname=null;
	private String address=null;
	private int phone;
	private String source=null;
	private String destination=null;
	private String destaddress=null;
	private double quantity;
	private double price;
	private String recivedate;
	private String dispdate;
	
	public String getTransacno()
	{
		return transacno;
	}
	public void setTransacno(String transacno)
	{
		this.transacno=transacno;
	}
}
	