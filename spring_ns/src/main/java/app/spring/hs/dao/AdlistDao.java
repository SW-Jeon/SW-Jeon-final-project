package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.AdlistVo;
import app.spring.vo.Criteria;

@Repository
public class AdlistDao {
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.AdMapper";
	public List<AdlistVo> adlist(Criteria cri){
		return sqlsessionTemplate.selectList(NAMESPACE+".adlist",cri);
	}
	public List<AdlistVo> adlist(){
		return sqlsessionTemplate.selectList(NAMESPACE+".adlist");
	}
	public int adcount(){
		return sqlsessionTemplate.selectOne(NAMESPACE+".adcount");
	}
}
