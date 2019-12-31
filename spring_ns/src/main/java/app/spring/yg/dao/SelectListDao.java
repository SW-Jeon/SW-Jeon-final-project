package app.spring.yg.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.BlogInfoVo;
import app.spring.vo.BlogVo;
import app.spring.vo.DetailVo;
import app.spring.vo.EditorVo;
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
		return sqlSessionTemplate.selectOne(NAMESPACE+".searchCount",values);
	}
	public int searchblogname(String m_phone){
		return sqlSessionTemplate.selectOne(NAMESPACE+".searchblogname",m_phone);
	}
	public List<BlogVo> searchbloglist(){
		return sqlSessionTemplate.selectList(NAMESPACE+".searchbloglist");
	}
	public List<BlogInfoVo> bloginfo(String m_phone){
		return sqlSessionTemplate.selectList(NAMESPACE+".bloginfo",m_phone);
	}
	public int insertblogname(BlogVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+".insertblogname",vo);
	}
	public int inserteditor(EditorVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+".inserteditor",vo);
	}
	public int insertblogname2(BlogVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+".insertblogname2",vo);
	}
	public int inserteditor2(EditorVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+".inserteditor2",vo);
	}
	public int blogdelete(int ed_num){
		return sqlSessionTemplate.delete(NAMESPACE+".blogdelete", ed_num);
	}
	public int updateeditor(EditorVo vo){
		return sqlSessionTemplate.update(NAMESPACE+".updateeditor",vo);
	}
	public BlogVo searchmybloginfo(String m_phone){
		return sqlSessionTemplate.selectOne(NAMESPACE+".searchmybloginfo", m_phone);
	}
	public EditorVo searchtext(int ed_num){
		return sqlSessionTemplate.selectOne(NAMESPACE+".searchtext",ed_num);
	}
	public List<BlogInfoVo> bloginfo2(String bl_name){
		return sqlSessionTemplate.selectList(NAMESPACE+".bloginfo2",bl_name);
	}
	public BlogVo searchyourbloginfo(String bl_name){
		return sqlSessionTemplate.selectOne(NAMESPACE+".searchyourbloginfo",bl_name);
	}
}
