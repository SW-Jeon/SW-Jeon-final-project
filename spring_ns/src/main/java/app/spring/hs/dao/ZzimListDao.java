package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.ZzimListVo;

@Repository
public class ZzimListDao {
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.ZzimMapper";
	
	public List<ZzimListVo> zzimlist(String m_phone){
		return sqlsessionTemplate.selectList(NAMESPACE+".zzimlists",m_phone);
	}
}
