package app.spring.js.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.BusinessVo;


@Repository
public class BusinessDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE= "app.spring.mybatis.mapper.BusinessMapper";
	
	public int insert(BusinessVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+ ".insert",vo);
	}

}
