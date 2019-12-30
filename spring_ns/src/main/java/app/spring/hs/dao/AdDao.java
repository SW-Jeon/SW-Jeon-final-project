package app.spring.hs.dao;



import java.sql.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.AdVo;
import app.spring.vo.AdpicVo;
import app.spring.vo.AdvertiserVo;
import app.spring.vo.PayVo;

@Repository
public class AdDao {
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.AdMapper";
	
	public int adinsert(AdVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".adinsert",vo);
	}
	public Date addate(int dates){
		return sqlsessionTemplate.selectOne(NAMESPACE+".addate",dates);
	}
	public int adpic(AdpicVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".adpic",vo);
	}
	public int adverinsert(AdvertiserVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".adverinsert",vo);
	}
	public int advernum(String ad_name){
		return sqlsessionTemplate.selectOne(NAMESPACE+".advernum",ad_name);
	}
	public int adnum(){
		return sqlsessionTemplate.selectOne(NAMESPACE+".adnum");
	}
	public int payinsert(PayVo vo){
		return sqlsessionTemplate.insert(NAMESPACE+".payinsert",vo);
	}
}
