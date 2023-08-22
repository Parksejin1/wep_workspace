package mybatis;

import static org.junit.jupiter.api.Assertions.*;

import org.apache.ibatis.session.SqlSession;

class sqlSessionTest {

	void connect() {
		SqlSession sqlsession = SqlSessionBean.getSession();
		assertNotNull(sqlsession);
		
	}

}
