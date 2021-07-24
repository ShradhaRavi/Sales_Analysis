import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date; 
import java.util.Calendar;
public class demo {
	public static void main(String[] args) {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "sales";
		String driver = "com.mysql.cj.jdbc.Driver";
		String userName = "root"; 
		String password = "";
		
		//Queries
		String q1,q2,q3,q4,q5,q6,q7;
		PreparedStatement ps1,ps2;
		
		//Other variables
		Date poend,rollend;
		String f1="",f2="",f3="";	
		int inv=0,i=0,invoice,lastinv1,lastinv2,n,count=0;
		SimpleDateFormat df1 = new SimpleDateFormat("dd-MM-yyyy");
		SimpleDateFormat df2 = new SimpleDateFormat("dd-MM-yyyy");
		Calendar m1 = Calendar.getInstance();
		Calendar m2 = Calendar.getInstance();		
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url+dbName,userName,password);
			Statement stmt = conn.createStatement();
			System.out.println("Connected to database");
			
			//To get the Last Invoice number in invoices table
			q1="SELECT * FROM invoices ORDER BY invoiceId DESC";
			ResultSet rs = stmt.executeQuery(q1);
			rs.next();
			lastinv1=rs.getInt("invoiceId");
			lastinv2=lastinv1;
			System.out.println("Last invoice number:"+lastinv1);
			
			//SalesOrderTable
			q2 = "Select * FROM salesorders WHERE billType='Monthly' AND possibleRollover='Y'";			
			ResultSet rs1 = stmt.executeQuery(q2);
			String soarr[]=new String[100];
			String poendarr[]=new String[100];
			String rollendarr[]=new String[100];
			System.out.println("selecting rollover sales orders from salesorder table");			
			while(rs1.next())
			{
				f1 = rs1.getString("salesOrderId"); //Extracting the sales order ID
				f2 = rs1.getString("poEndDate"); //extracting the PO End Date
				f3 = rs1.getString("rolloverEndDate"); //extracting the Roll-over End Date
				soarr[i]=f1; //inserting values of sales order IDs in array
				poendarr[i]=f2; //inserting the PO End Dates in an array
				rollendarr[i]=f3; //inserting the Roll Over End Dates in an array
				i++;
			}
			System.out.println("Number of records:"+i);
			System.out.println("Data from salesorders that will result in rollover:");
			for(int k=0;k<i;k++)
			{
				System.out.print(soarr[k]+" ");
				System.out.print(poendarr[k]+" ");
				System.out.print(rollendarr[k]+" ");
				System.out.println();
			}
			for(int j=0;j<i;j++)
			{
				poend = df1.parse(poendarr[j]); //convert string to date
				rollend = df2.parse(rollendarr[j]); //convert string to date
				m1.setTime(poend);
				m2.setTime(rollend);

				//SalesOrders_Invioces table
				q3=" Select * FROM salesorders_invoices WHERE salesOrderId='"+soarr[j]+"'" ;				
				ResultSet rs2 = stmt.executeQuery(q3);
				System.out.println("Querying for all invoices with the Sales Order ID ="+soarr[j]);
				while(rs2.next())
				{
					invoice=rs2.getInt("invoiceId");
					if(invoice>inv)
						inv=invoice;
				}//inv contains the invoice number in question 
				
				System.out.println("The last invoice raised for Sales Order ID "+soarr[j]+" is "+inv);
				
				//invoices table
				q4="SELECT * FROM invoices WHERE invoiceId='"+inv+"'";
				ResultSet rs3 = stmt.executeQuery(q4);
				q6 = "INSERT INTO invoices VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				ps1 = conn.prepareStatement(q6);
				System.out.println("Querying for "+inv+" in invoices table and then inserting rows into it");
				while(rs3.next())
				{
					while(m1.before(m2))
					{
						lastinv1++;
						String date;					
						ps1.setInt(1,lastinv1);
						m1.add(Calendar.MONTH,1);
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
						count++;
						ps1.addBatch();
					}ps1.executeBatch();
				}
				while(count!=0) 
				{
					q5="SELECT * FROM invoiceitems WHERE invoiceId='"+inv+"'";
					ResultSet rs4 = stmt.executeQuery(q5);
					q7 = "INSERT INTO invoiceitems VALUES (?,?,?,?,?,?,?)";
					ps2 = conn.prepareStatement(q7);
					System.out.println("Querying for "+inv+" in invoice items table and then inserting rows into it");
					lastinv2++;
					while(rs4.next())
					{
						ps2.setInt(1,lastinv2);
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
			System.out.print(e);
		}
	}
}
