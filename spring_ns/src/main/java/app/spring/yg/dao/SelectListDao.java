package app.spring.yg.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.DetailVo;
import app.spring.vo.FoodVo;
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
	public int recount(int d_num){
		return sqlSessionTemplate.selectOne(NAMESPACE+".recount",d_num);
	}
	public FoodVo checkfood(Map<String, Object>values){
		return sqlSessionTemplate.selectOne(NAMESPACE+".checkfood",values);
	}
	public int joinfood(Map<String, Object>values){
		return sqlSessionTemplate.insert(NAMESPACE+".joinfood",values);
	}
	public List<DetailVo> foodlist(String m_phone){
		return sqlSessionTemplate.selectList(NAMESPACE+".foodlist",m_phone);
	}
	public int foodcount(String m_phone){
		return sqlSessionTemplate.selectOne(NAMESPACE+".foodcount",m_phone);
	}
	public int fooddelete(String m_phone){
		return sqlSessionTemplate.delete(NAMESPACE+".fooddelete",m_phone);
	}
	public int foodautodel(Map<String, Object>values){
		return sqlSessionTemplate.delete(NAMESPACE+".foodautodel",values);
	}
	public int searchcount(Map<String, Object>values){
		return  sqlSessionTemplate.selectOne(NAMESPACE+".searchCount",values);
	}
}
