package app.spring.hs.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.ReportVo;

@Repository
public class ReportDao {
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.ReportMapper";
	
	public int insert(ReportVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".insert",vo);
	}
}
