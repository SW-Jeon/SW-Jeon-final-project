package app.spring.hs.dao;

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
}
