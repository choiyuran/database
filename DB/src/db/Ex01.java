package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import oracle.jdbc.driver.OracleDriver;

public class Ex01 {
	public static void main(String[] args) throws Exception {
		
		String sql = "select * from phonebook"; 
		String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		String className = OracleDriver.class.getName();
		Class.forName(className);
		
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			String name = rs.getString("name");
			int age = rs.getInt("age");
			String pnum = rs.getString("pnum");
			System.out.printf("%s\t%s\t%s\n", name, age, pnum);
		}
		
				
		rs.close();
		stmt.close();
		conn.close();
				
		
	}
}
