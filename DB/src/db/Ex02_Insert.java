package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Ex02_Insert {
	public static void main(String[] args) throws Exception {
		String sql = "insert into phonebook values('신짱구', 7, '010-4444-4444')";
		String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stmt = conn.createStatement();
		int row = stmt.executeUpdate(sql);
		
		System.out.println(row != 0 ? "추가 성공" : "추가 실패");
		
		stmt.close();
		conn.close();
			
	}
}
