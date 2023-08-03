package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.utile.OracleUtilty;
import sample.dto.MemberDto;



public class MemberDao {
// 싱글톤 만들기 
	
	private static MemberDao dao = new MemberDao();
	private MemberDao() {}
	public static MemberDao getmember_tbl_02Dao() {	//매소드 getInstance외에 내용을 알수 있는 이름으로 정하기
		return dao;
		
	}
	
	
	
	
	
	public int insert(MemberDto mt) throws SQLException {
	Connection conn = OracleUtilty.getConnection();
	String sql ="insert into member_tbl_02 values(jbuy_seq.nextval,?,?,sysdate,?,?)";
	PreparedStatement ps = conn.prepareStatement(sql);
	
	
	return 0;
		 }
	
	
	public List<MemberDto> selectAll() throws SQLException{
		Connection conn = OracleUtilty.getConnection();
		String sql ="SELECT *FROM  member_tbl_02";
		PreparedStatement ps = conn.prepareStatement(sql);
		List<MemberDto> results = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			
			MemberDto tbl_02 = new  MemberDto(rs.getInt(1),
					 rs.getString(2), 
					rs.getString(3),
					rs.getString(4), 
					 rs.getDate(5),
					 rs.getString(6),
					 rs.getString(7));
			
			results.add(tbl_02);
		}
		return results;
	}
		
	
	
	public int update(MemberDto custno) throws SQLException {
		Connection conn = OracleUtilty.getConnection();
		String sql = "update TBL_STUDENT "
				+ "set custname = ?,phone = ?,address=?,"
				+ "grade=?,city=? where custno=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1,custno.getCustname());
		ps.setString(2,custno.getPhone());
		ps.setString(3,custno.getAddress());
		ps.setString(4,custno.getGrade());
		ps.setString(5,custno.getCity());
		ps.setInt(6,custno.getCustno());
		
		
		int result = ps.executeUpdate();
		
		
		return result;
		
	}
	
	
	
	
	
	}

