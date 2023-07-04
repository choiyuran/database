package day23;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Ex01 {
	public static void main(String[] args) throws Exception {
		// PreparedStatement : Statement의 서브 클래스(상속 관계)
		
		String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		String sql = "insert into sales (product, cnt) values(?, ?)";
//		String sql = "insert into sales(product, cnt) values(" + 5 + ", " + 3 + ")";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, user, password);
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, 4);				// sql에서 첫번째 물음표에 int 5를 넣는다(product)
		pstmt.setInt(2, 3);				// sql에서 두번째 물음표에 int 3을 넣는다(cnt)
		
		int row = pstmt.executeUpdate();
		System.out.println(row + "행이 추가되었습니다");
		
		pstmt.close();
		conn.close();
	}
}
