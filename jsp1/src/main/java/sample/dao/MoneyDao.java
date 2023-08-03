package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.utile.OracleUtilty;
import sample.dto.MoneyDto;

public class MoneyDao {

	private static MoneyDao dao = new MoneyDao();
	private MoneyDao() {}
	public static MoneyDao getsalesDao() {	
		return dao;
	}
	
	
	public List<MoneyDto> selectAll() throws SQLException{
		Connection conn = OracleUtilty.getConnection();
		String sql ="SELECT * FROM sales";
		PreparedStatement ps = conn.prepareStatement(sql);
		List<MoneyDto> results = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			MoneyDto total = new  MoneyDto( rs.getInt(1),
			rs.getString(2),
			rs.getString(3),
			rs.getInt(4));
			
					
			results.add(total);
			
		
		}
		return results;
	}
	
	
}
//CREATE VIEW sales
//as
//SELECT a.CUSTNO , a.CUSTNAME , a.GRADE , b.total 
//FROM MEMBER_TBL_02 a
//join(
//SELECT CUSTNO , sum(amount*price) total 
//FROM MONEY_TBL_02 
//GROUP BY custno) b
//ON a.CUSTNO = b.custno
//ORDER BY b.total desc;
