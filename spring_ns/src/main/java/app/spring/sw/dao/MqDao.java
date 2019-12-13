package app.spring.sw.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.MqVo;

@Repository
public class MqDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE="app.spring.mybatis.mapper.MqMapper";
	//회원 문의 등록
	public int insert(MqVo vo){
		System.out.println(vo.getM_phone());
		return sqlSessionTemplate.insert(NAMESPACE + ".insert",vo);
		
	}
	//회원 문의 삭제
	public int delete(int mq_num){
		return sqlSessionTemplate.delete(NAMESPACE + ".delete",mq_num);
	}
	//회원 문의 답변 후 상태
	public int update(MqVo vo){
		return sqlSessionTemplate.update(NAMESPACE + ".update",vo);
	}
	//회원 문의 조회
	public MqVo getInfo(int mq_num){
		return sqlSessionTemplate.selectOne(NAMESPACE + ".getInfo",mq_num);
	}
	//회원 전체 문의 조회(운영자용)
	public List<MqVo> listAll(){
		return sqlSessionTemplate.selectList(NAMESPACE + ".listAll");
	}

	//회원문의 본인용
	public List<MqVo> listMy(String m_phone){
		return sqlSessionTemplate.selectList(NAMESPACE + ".listMy",m_phone);
	}

	//회원 상세내용
	public MqVo detail(int mq_num){
		return sqlSessionTemplate.selectOne(NAMESPACE+".detail", mq_num);
	}

}
