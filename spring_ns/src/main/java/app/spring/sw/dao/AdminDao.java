package app.spring.sw.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.AdminVo;

@Repository
public class AdminDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE = "app.spring.mybatis.mapper.AdminMapper";
	
	public boolean getInfo(String a_id){
		AdminVo a =  sqlSessionTemplate.selectOne(NAMESPACE+".getInfo", a_id);
		return (a == null) ? true : false;
	}
}
