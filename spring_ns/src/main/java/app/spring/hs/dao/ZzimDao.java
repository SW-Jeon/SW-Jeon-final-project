package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.ZzimVo;
@Repository
public class ZzimDao {
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.ZzimMapper";
	
	public int insert(ZzimVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".insert",vo);
	}
	public int delete(int d_num){
		return sqlsessionTemplate.delete(NAMESPACE+".delete",d_num);
	}
	public List<ZzimVo> select(String m_phone){
		return sqlsessionTemplate.selectList(NAMESPACE+".select",m_phone);
	}
}
