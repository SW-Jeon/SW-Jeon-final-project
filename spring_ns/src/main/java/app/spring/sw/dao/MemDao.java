package app.spring.sw.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.MemVo;

@Repository
public class MemDao {
		@Autowired private SqlSessionTemplate sqlSessionTemplate;
		private final String NAMESPACE = "app.spring.mybatis.mapper.MemMapper";
		
		// 회원가입
		public int insert(MemVo vo){
			return sqlSessionTemplate.insert(NAMESPACE+".insert",vo);
		}
		
		//업데이트
		public int update(MemVo vo){
			return sqlSessionTemplate.update(NAMESPACE+".update",vo);
		}
		
		//회원탈퇴
		public int delete(String m_phone){
			return sqlSessionTemplate.delete(NAMESPACE+".delete",m_phone);
		}
		
		//회원조회
		public MemVo getInfo(String m_phone){
			return sqlSessionTemplate.selectOne(NAMESPACE+".getInfo",m_phone);
		}
		
		
		//전체조회
		public  List<MemVo> listAll(){
			return sqlSessionTemplate.selectList(NAMESPACE+".listAll");
		}
		
		//회원아이디찾기
		public String getPhone(MemVo vo){
			return sqlSessionTemplate.selectOne(NAMESPACE+".getPhone",vo);
		}
		
		//비밀번호 변경
		public int changePwd(MemVo vo){
			return sqlSessionTemplate.update(NAMESPACE+".changePwd", vo);
		}
}
