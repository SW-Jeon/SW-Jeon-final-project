package app.spring.hs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;


@Repository
public class DetailDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;

	private final String NAMESPACE="app.spring.mybatis.mapper.DetailMapper";

	public DetailVo finds(String d_sname){
		return sqlSessionTemplate.selectOne(NAMESPACE+".finds",d_sname);
	}
	public List<DetailVo> findlist(String d_sname){
		return  sqlSessionTemplate.selectList(NAMESPACE+".findlist",d_sname);
	}

	public List<DetailVo> finddetail(String d_sname){
		return sqlSessionTemplate.selectList(NAMESPACE+".finddetail",d_sname);
	}
	public List<FindimgVo> findimg(String d_sname){
		return sqlSessionTemplate.selectList(NAMESPACE+".findimg",d_sname);
	}
	//가게정보 등록
	public int insert(DetailVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+ ".insert",vo);
	}
	public List<FindmenuVo> findmenu(String d_sname){
		return sqlSessionTemplate.selectList(NAMESPACE+".findmenu",d_sname);
	}
}