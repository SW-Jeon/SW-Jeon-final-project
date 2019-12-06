package app.spring.js.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.BusinessVo;


@Repository
public class BusinessDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE= "app.spring.mybatis.mapper.BusinessMapper";
	//사업자 정보 등록
	public int insert(BusinessVo vo){
		return sqlSessionTemplate.insert(NAMESPACE+ ".insert",vo);
	}
	//사업자 정보 삭제
	public int delete(int b_num){
		return sqlSessionTemplate.delete(NAMESPACE +".delete",b_num);
	}
	//사업자 개인 조회
	public BusinessVo getInfo(int b_num){
		return sqlSessionTemplate.selectOne(NAMESPACE + "getInfo",b_num);
	}
	//사업자 전체 조회
	public List<BusinessVo> listAll(){
		return sqlSessionTemplate.selectList(NAMESPACE+ "listAll");
	}
}
