package app.spring.sw.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.InfoVo;

@Repository
public class InfoDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE = "app.spring.mybatis.mapper.InfoMapper";
	
	//글 등록
	public int insert(InfoVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+".insert", vo);
	}
	
	//조회수 업데이트
	public int addHit(int i_num){
		return sqlSessionTemplate.update(NAMESPACE+".addHit",i_num);
	}
	
	//수정
	public int update(InfoVo vo){
		return sqlSessionTemplate.update(NAMESPACE+".update", vo);
	}
	
	//삭제
	public int delete(int i_num){
		return sqlSessionTemplate.delete(NAMESPACE+".delete",i_num);
	}
	
	//전체조회
	public List<InfoVo> list(){
		return sqlSessionTemplate.selectList(NAMESPACE + ".listAll");
	}
	
	//상세조회
	public InfoVo detail(int i_num){
		return sqlSessionTemplate.selectOne(NAMESPACE+".detail", i_num);
	}
}
