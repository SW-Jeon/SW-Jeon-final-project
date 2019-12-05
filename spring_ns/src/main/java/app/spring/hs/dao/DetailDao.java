package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.DetailVo;


@Repository
public class DetailDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE="app.mybatis.mapper.DetailMapper";
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public DetailVo finds(String name){
		return sqlSessionTemplate.selectOne(NAMESPACE+".finds",name);
	}
	public List<DetailVo> findlist(String name){
		return sqlSessionTemplate.selectList(NAMESPACE+".findlist",name);
	}
}