package phonebook;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public DTO mapper(ResultSet rs) throws SQLException {
		DTO dto = new DTO();
		dto.setName(rs.getString("name")); 
		dto.setAge(rs.getInt("age")); 
		dto.setPnum(rs.getString("pnum")); 
		return dto;
	}
	
	public DAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로드 실패 : " + e);
		}
	}
	
	public void close() {
		try { if(rs != null) rs.close(); }	catch(Exception e) {}
		try { if(stmt != null) stmt.close(); }	catch(Exception e) {}
		try { if(conn != null) conn.close(); }	catch(Exception e) {}
	}
	
	public Connection getConnect() throws SQLException {
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}

	// 전체 조회
	public List<DTO> selectAll() {
		ArrayList<DTO> list = new ArrayList<>();
		String sql = "select * from phonebook order by name";
		
		try {
			conn = getConnect();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				list.add(mapper(rs));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		
		return list;
	}

	// 추가
	public int insert(DTO dto) {
		int row = 0;
		String sql = "insert into phonebook values('%s', %s, '%s')";
		sql = String.format(sql, dto.getName(), dto.getAge(), dto.getPnum());
		
		try {
			conn = getConnect();
			stmt = conn.createStatement();
			row = stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		
		return row;
	}

	// 검색
	public List<DTO> search(String name) {
		List<DTO> list = new ArrayList<>();
		String sql = "select * from phonebook where name like '%%%s%%'";
		sql = String.format(sql, name);
		
		try {
			conn = getConnect();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				list.add(mapper(rs));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		return list;
		
	}

	// 단일검색
	public DTO selectOne(String name) {
		DTO dto = new DTO();
		String sql = "select * from phonebook where name = '%s'";
		sql = String.format(sql, name);
		
		try {
			conn = getConnect();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				dto = mapper(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		return dto;
	}
	
	// 삭제
	public int delete(String name) {
		int row = 0;
		String sql = "delete phonebook where name = '%s'";
		sql = String.format(sql, name);
		
		try {
			conn = getConnect();
			stmt = conn.createStatement();
			row = stmt.executeUpdate(sql);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
				
		return row;
	}

	// 수정
	public int update(DTO dto, String name) {
		int row = 0;
		String sql = "update phonebook "
				+ "set name = '%s', age = %s, pnum = '%s' "
				+ "where name = '%s'";
		sql = String.format(sql, dto.getName(), dto.getAge(), dto.getPnum(), name);
		
		try {
			conn = getConnect();
			stmt = conn.createStatement();
			row = stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { close(); }
		
		return row;
	}
	
	
	
	
}
