package sample.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.utile.OracleUtilty;

import sample.dto.JCustomer;

public class JCustomerDao {		//구매와 관련된 CRUD 실행 SQL. DAO : JCustomerDao , JProductDao
//메소드 이름은 insert , update , delete , select , selectByPname 등등으로 이름을 작성하세요.

	//1. 회원 로그인 - 간단히 회원아이디를 입력해서 존재하면 로그인 성공
	public JCustomer selectById(String customid) throws SQLException {
		Connection conn = OracleUtilty.getConnection();
		String sql = "select * from j_custom"
				+ " where custom_id=?";		// PK조회 : 결과 행 0 또는 1개
		PreparedStatement ps = conn.prepareStatement(sql);
// Statement : SQL, Prepared : SQL 이 미리 컴파일되어 준비된.
// PreparedStatement 는 Statement 인터페이스와 비교할 수 있습니다.
// Statement 인터페이스 : SQL 실행에 필요한 데이터를 동시에 포함시켜서 컴파일을 합니다.
		ps.setString(1, customid);
// 준비된 SQL 에 파라미터 전달하여
		
		ResultSet rs = ps.executeQuery();
// select 쿼리 실행
		
		JCustomer temp = null;
		if(rs.next()) {
			temp = new JCustomer(rs.getString(1), 
					rs.getString(2), 
					rs.getString(3), 
					rs.getInt(4), 
					rs.getDate(5),null);
		}
		ps.close();
		conn.close();
		
		return temp;
	}
	public JCustomer login(String id,String password) throws SQLException   {
	      Connection conn = OracleUtilty.getConnection();
	      // id는 custom_id 컬럼값, password는 password 컬럼값(평문으로 저장됨)
	      String sql = "select custom_id ,name  "
	            + "from j_custom where custom_id =? and password=?";
	      JCustomer result = null;
	      PreparedStatement ps = conn.prepareStatement(sql);
	      ps.setString(1, id);
	      ps.setString(2,password);
	      
	      ResultSet rs = ps.executeQuery();
	      if(rs.next()) {
	         result = JCustomer.builder()
	               .custom_id(rs.getString(1))
	               .name(rs.getString(2))
	               .build();
	      }
	      
	      return result;      //result 가 null 이 아니면 로그인 성공
	   }
	
}