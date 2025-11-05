package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class Registration {
	public static void main(String[] args) {
	      String JdbcURL = "jdbc:mysql://localhost:3306/speshway";
	      String Username = "root";
	      String password = "Mvrpslv3@mvr";
	      Connection con = null;
	      try {
		         System.out.println("Connecting to MYSQL database..............."+JdbcURL);
		         con = DriverManager.getConnection(JdbcURL, Username, password);
		         System.out.println("Connection is successful!!!!!!");
		      }
		      catch(Exception e) {
		         e.printStackTrace();
		      }
	}
}
