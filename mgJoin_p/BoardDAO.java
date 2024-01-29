package mgJoin_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BoardDAO {
	Connection con;
	Statement stm;
	ResultSet rs;
	String sql;
	public BoardDAO() {
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/member_db",
					"kmj",
					"123456"
				);
			stm = con.createStatement();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void close() {
		if(rs!=null) {
			try {rs.close();} catch (SQLException e) {e.printStackTrace();}
			}
	
		if(stm!=null) {
			try {stm.close();} catch (SQLException e) {e.printStackTrace();}
			}
		if(con!=null) {
			try {con.close();} catch (SQLException e) {e.printStackTrace();}
			}
	}
	
	public ArrayList<BoardDTO> list(){
		ArrayList<BoardDTO> res = new ArrayList<BoardDTO>();
		
		
		try {
			sql = "select * from board";
			
			rs = stm.executeQuery(sql);
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setPostTitle(rs.getString("postTitle"));
				dto.setContents(rs.getString("contents"));
				dto.setPid(rs.getString("pid"));
				dto.setPostDay(rs.getDate("postDay"));
				dto.setPostFile(rs.getString("postFile"));
				dto.setNumber(rs.getInt("number"));
				dto.setPname(rs.getString("pname"));
				
				res.add(dto);
				
			}
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
			
		}
		
		return res;
	}
	
	public BoardDTO detail(int number){
		BoardDTO dto = null;
		
		try {
			sql = "select * from board where number ="+number+";";
			
			rs = stm.executeQuery(sql);
			
			if(rs.next()) {
				
				dto = new BoardDTO();
				dto.setPostTitle(rs.getString("postTitle"));
				dto.setContents(rs.getString("contents"));
				dto.setPostDay(rs.getDate("postDay"));
				dto.setPostFile(rs.getString("postFile"));
				dto.setNumber(rs.getInt("number"));
				dto.setPname(rs.getString("pname"));
				
				
			}
			
		
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
			
		}
		
		return dto;
	}
	
}
