package app.spring.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.BqDao;
import app.spring.vo.BqVo;

@Service
public class BqService {
	@Autowired private BqDao bqDao;
	//사업자 문의 등록
	public int insert(BqVo vo){
		return bqDao.insert(vo);
	}
	//사업자 문의 삭제
	public int delete(int bq_num){
		return bqDao.delete(bq_num);
	}
	//사업자 답변 후 상태
	public int update(BqVo vo){
		return bqDao.update(vo);
	}
	//사업자 문의 조회
	public BqVo getInfo(int bq_num){
		return bqDao.getInfo(bq_num);
	}
	//사업자 전체  문의 조회
	public List<BqVo> listAll(){
		return bqDao.listAll();
	}
}
