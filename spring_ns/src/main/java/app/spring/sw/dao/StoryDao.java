package app.spring.sw.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.StoryVo;

@Repository
public class StoryDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE = "app.spring.mybatis.mapper.StoryMapper";
	
	//글 등록
		public int insert(StoryVo vo){
			return sqlSessionTemplate.insert(NAMESPACE+".insert", vo);
		}
		
		//조회수 업데이트
		public int addHit(int s_num){
			return sqlSessionTemplate.update(NAMESPACE+".addHit",s_num);
		}
		
		//수정
		public int update(StoryVo vo){
			return sqlSessionTemplate.update(NAMESPACE+".update", vo);
		}
		
		//삭제
		public int delete(int s_num){
			return sqlSessionTemplate.delete(NAMESPACE+".delete",s_num);
		}
		
		//전체조회
		public List<StoryVo> list(){
			return sqlSessionTemplate.selectList(NAMESPACE + ".listAll");
		}
		
		//상세조회
		public StoryVo detail(int s_num){
			return sqlSessionTemplate.selectOne(NAMESPACE+".detail", s_num);
		}
}
