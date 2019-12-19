package app.spring.hs.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.Criteria;
import app.spring.vo.ZzimListVo;


@Repository
public class ZzimListDao implements BoardDao{
	@Autowired private SqlSessionTemplate sqlsessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.ZzimMapper";
	
	public List<ZzimListVo> zzimlist(String m_phone){
		return sqlsessionTemplate.selectList(NAMESPACE+".selectall",m_phone);
	}
	@Override
	public int zzimcount() throws Exception{
		return sqlsessionTemplate.selectOne(NAMESPACE+".zzimcount");
	}
	@Override
	public List<ZzimListVo> listpage(Criteria cri) throws Exception {
		return sqlsessionTemplate.selectList(NAMESPACE+".listpage",cri);
	}

}
