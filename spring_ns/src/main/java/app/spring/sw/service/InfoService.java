package app.spring.sw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.InfoDao;
import app.spring.vo.InfoVo;

@Service
public class InfoService {
	@Autowired InfoDao iDao;
	
		//글 등록
		public int insert(InfoVo vo){
			return iDao.insert(vo);
		}
		
		//조회수 업데이트
		public int addHit(int i_num){
			return iDao.addHit(i_num);
		}
		
		//수정
		public int update(InfoVo vo){
			return iDao.update(vo);
		}
		
		//삭제
		public int delete(int i_num){
			return iDao.delete(i_num);
		}
		
		//전체조회
		public List<InfoVo> list(){
			return iDao.list();
		}
		
		//상세조회
		public InfoVo detail(int i_num){
			return iDao.detail(i_num);
		}
}
