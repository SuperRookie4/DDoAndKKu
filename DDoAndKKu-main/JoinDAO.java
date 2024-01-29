package mgJoin_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JoinDAO {
	
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	//연결을 위한 생성자
	public JoinDAO() {
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/member_db",
					"member",
					"123456"
					);
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from member");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//연결해제 메서드
	void close() {
		
		if(rs != null) {
			try {rs.close();} catch (SQLException e) {}
		}
		if(stmt != null) {
			try {stmt.close();} catch (SQLException e) {}
		}
		if(con != null) {
			try {con.close();} catch (SQLException e) {}
		}
	}
	
	//회원가입 메서드
	public JoinDTO insert(String pid) {
		JoinDTO dto =  null;

		try {
			sql = "select * from member where pid = '"+pid+"'";

			//sql 반환해
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				dto = new JoinDTO();
				dto.setPid(rs.getString("pid"));
				dto.setPw(rs.getString("pw"));
				dto.setPname(rs.getString("pname"));
				dto.setBirth(rs.getString("birth"));
				dto.setEmail(rs.getString("email"));
				dto.setPhone(rs.getString("phone"));
			}
			
		} catch (SQLException e) {
			
		}finally {
			close();
		}
		return dto;
	}
	
	
}
