
import java.sql.*;
public class Hello {

	public static void main(String[] args) {
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from EmpTb");
			while(rs.next())
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+ rs.getInt(3));
			con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}

	}

}
