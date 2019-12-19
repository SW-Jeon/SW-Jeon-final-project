package app.spring.sw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.StoryDao;
import app.spring.vo.StoryVo;

@Service
public class StoryService {
	@Autowired StoryDao sDao;
	
			//글 등록
			public int insert(StoryVo vo){
				return sDao.insert(vo);
			}
			
			//조회수 업데이트
			public int addHit(int s_num){
				return sDao.addHit(s_num);
			}
			
			//수정
			public int update(StoryVo vo){
				return sDao.update(vo);
			}
			
			//삭제
			public int delete(int s_num){
				return sDao.delete(s_num);
			}
			
			//전체조회
			public List<StoryVo> list(){
				return sDao.list();
			}
			
			//상세조회
			public StoryVo detail(int s_num){
				return sDao.detail(s_num);
			}
}
