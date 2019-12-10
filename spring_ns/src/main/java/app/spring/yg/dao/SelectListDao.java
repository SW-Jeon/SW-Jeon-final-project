package app.spring.yg.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.DetailVo;

@Repository
public class SelectListDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;

	private final String NAMESPACE="app.spring.mybatis.mapper.SelectListMapper";
	
	public List<DetailVo> searchList(String keyword){
		return  sqlSessionTemplate.selectList(NAMESPACE+".searchList",keyword);
	}
}
