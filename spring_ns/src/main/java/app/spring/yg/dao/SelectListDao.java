package app.spring.yg.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.DetailVo;
import app.spring.vo.SearchListVo;

@Repository
public class SelectListDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;

	private final String NAMESPACE="app.spring.mybatis.mapper.SelectListMapper";
	
	public List<SearchListVo> searchList(Map<String, Object>values){
		return  sqlSessionTemplate.selectList(NAMESPACE+".searchList",values);
	}
	public int increhit(int d_num){
		return sqlSessionTemplate.update(NAMESPACE+".increhit",d_num);
	}
}
