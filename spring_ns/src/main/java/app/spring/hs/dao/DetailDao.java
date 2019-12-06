package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import app.spring.vo.DetailVo;


@Repository
public class DetailDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;

	private final String NAMESPACE="app.spring.mybatis.mapper.DetailMapper";

	public DetailVo finds(String d_sname){
		return sqlSessionTemplate.selectOne(NAMESPACE+".finds",d_sname);
	}
	public List<DetailVo> findlist(String d_sname){
		return sqlSessionTemplate.selectList(NAMESPACE+".findlist",d_sname);
	}
	public int insert(DetailVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+ ".insert",vo);
	}
}