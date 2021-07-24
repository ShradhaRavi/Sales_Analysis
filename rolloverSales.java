import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date; 
import java.util.Calendar;

public class rolloverSales {
	public static Connection conn = null;
	public static Statement stmt;
	public static String q1,q2,q3,q4,q5,q6,q7;
	public static PreparedStatement ps1,ps2;	
	public static String salesOrderArray[]=new String[100];
	public static String poEndDateArray[]=new String[100];
	public static String rolloverEndDateArray[]=new String[100];
	public static String f1,f2,f3;
	public static Date poEndDate, rolloverEndDate;
	public static SimpleDateFormat df1 = new SimpleDateFormat("dd-MM-yyyy");
	public static SimpleDateFormat df2 = new SimpleDateFormat("dd-MM-yyyy");
	public static Calendar m1 = Calendar.getInstance();
	public static Calendar m2 = Calendar.getInstance();
	public static int lastInvoice1,lastInvoice2,invoice;
	public static int i, count=0, invTemp=0;
	
	public static void getConnection() //to establish a connection with the database
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","");
			
			System.out.println("Connected to database");
		}
		catch (Exception e) 
		{
            System.out.println(e);
		}
	}
	
	public static void lastInvoice() //to find the last known invoice
	{
		try 
		{
			Statement stmt = conn.createStatement();
			//getting the last invoice
			q1="SELECT * FROM invoices ORDER BY invoiceId DESC";
			ResultSet rs = stmt.executeQuery(q1);
			rs.next();
			lastInvoice1=rs.getInt("invoiceId");
			lastInvoice2=lastInvoice1;
			System.out.println("Last invoice number:"+lastInvoice1);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public static void salesOrders() //querying for all sales orders that have Roll-Over
	{
		try 
		{
			
			Statement stmt = conn.createStatement();
			
			//SalesOrderTable
			q2 = "Select * FROM salesorders WHERE billType='Monthly' AND possibleRollover='Y'";			
			ResultSet rs1 = stmt.executeQuery(q2);		
			System.out.println("selecting rollover sales orders from salesorder table");			
			
			while(rs1.next())
			{
				f1 = rs1.getString("salesOrderId"); //Extracting the sales order ID
				f2 = rs1.getString("poEndDate"); //extracting the PO End Date
				f3 = rs1.getString("rolloverEndDate"); //extracting the Roll-over End Date
				salesOrderArray[i]=f1; //inserting values of sales order IDs in array
				poEndDateArray[i]=f2; //inserting the PO End Dates in an array
				rolloverEndDateArray[i]=f3; //inserting the Roll Over End Dates in an array
				i++;
			}
			
			System.out.println("Number of records:"+i);
			System.out.println("Data from salesorders that will result in rollover:");
			//printing all the necessary sales orders
			for(int k=0;k<i;k++)
			{
				System.out.print(salesOrderArray[k]+" ");
				System.out.print(poEndDateArray[k]+" ");
				System.out.print(rolloverEndDateArray[k]+" ");
				System.out.println();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public static void rolloverInvoices()
	{
		try 
		{
			Statement stmt = conn.createStatement();
			for(int j=0;j<i;j++)
			{
				poEndDate = df1.parse(poEndDateArray[j]); //convert string to date
				rolloverEndDate = df2.parse(rolloverEndDateArray[j]); //convert string to date
				m1.setTime(poEndDate);
				m2.setTime(rolloverEndDate);
				m1.add(Calendar.MONTH,1);
				
				//SalesOrders_Invioces table
				q3=" Select * FROM salesorders_invoices WHERE salesOrderId='"+salesOrderArray[j]+"'" ;				
				ResultSet rs2 = stmt.executeQuery(q3);
				System.out.println("Querying for all invoices with the Sales Order ID ="+salesOrderArray[j]);
				
				while(rs2.next()) //to find the last invoice for that particular sales order
				{
					invoice=rs2.getInt("invoiceId");
					if(invTemp>=invoice)
						invoice=invTemp;
				}				
				System.out.println("The last invoice raised for Sales Order ID "+salesOrderArray[j]+" is "+invoice);
				
				//invoices table
				q4="SELECT * FROM invoices WHERE invoiceId='"+invoice+"'";
				ResultSet rs3 = stmt.executeQuery(q4);
				q6 = "INSERT INTO invoices VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				ps1 = conn.prepareStatement(q6);
				System.out.println("Querying for "+invoice+" in invoices table and then inserting rows into it");
				while(rs3.next())
				{
					while(m1.before(m2))
					{
						lastInvoice1++;
						String date;					
						ps1.setInt(1,lastInvoice1);						
						date=df1.format(m1.getTime());
						ps1.setString(2, date);
						ps1.setString(3, rs3.getString(3));
						ps1.setString(4, rs3.getString(4));
						ps1.setString(5, rs3.getString(5));
						ps1.setString(6, rs3.getString(6));
						ps1.setString(7, rs3.getString(7));
						ps1.setString(8, rs3.getString(8));
						ps1.setString(9, rs3.getString(9));
						ps1.setString(10, rs3.getString(10));
						ps1.setString(11, rs3.getString(11));
						ps1.setString(12, rs3.getString(12));
						ps1.setString(13, rs3.getString(13));
						ps1.setString(14, rs3.getString(14));
						ps1.setString(15, rs3.getString(15));
						ps1.setString(16, rs3.getString(16));
						ps1.setString(17, rs3.getString(17));
						ps1.setString(18, rs3.getString(18));
						ps1.setString(19, rs3.getString(19));
						m1.add(Calendar.MONTH,1);
						count++;
						ps1.addBatch();
					}ps1.executeBatch();
				}
				while(count!=0) 
				{
					q5="SELECT * FROM invoiceitems WHERE invoiceId='"+invoice+"'";
					ResultSet rs4 = stmt.executeQuery(q5);
					q7 = "INSERT INTO invoiceitems VALUES (?,?,?,?,?,?,?)";
					ps2 = conn.prepareStatement(q7);
					System.out.println("Querying for "+invoice+" in invoice items table and then inserting rows into it");
					lastInvoice2++;
					while(rs4.next())
					{
						ps2.setInt(1,lastInvoice2);
						ps2.setString(2, rs4.getString(2));
						ps2.setString(3, rs4.getString(3));
						ps2.setString(4, rs4.getString(4));
						ps2.setString(5, rs4.getString(5));
						ps2.setString(6, rs4.getString(6));
						ps2.setString(7, rs4.getString(7));
						ps2.addBatch();
					}
					ps2.executeBatch();			
					count--;
				}
			}
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
		
	}
	
	public static void main(String[] args)
	{
		getConnection();
		lastInvoice();
		salesOrders();
		rolloverInvoices();
	}

}
