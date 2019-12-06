package app.spring.js.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.BqVo;

@Repository
public class BqDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE= "app.spring.mybatis.mapper.BqMapper";
	//사업자 문의 등록
	public int insert(BqVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+".insert",vo);
	}
	//사업자 문의 삭제
	public int delete(int bq_num){
		return sqlSessionTemplate.delete(NAMESPACE+ ".delete",bq_num);
	}
	//사업자 문의 답변 후 상태
	public int update(BqVo vo){
		return sqlSessionTemplate.update(NAMESPACE + ".update",vo);
	}
	//사업자 개인 조회
	public BqVo getInfo(int bq_num){
		return sqlSessionTemplate.selectOne(NAMESPACE + ".getInfo",bq_num);
	}
	//사업자 전체 조회
	public List<BqVo> listAll(){
		return sqlSessionTemplate.selectList(NAMESPACE+".listAll");
	}
}
