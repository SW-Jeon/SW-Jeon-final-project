package app.spring.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.MqDao;
import app.spring.vo.MqVo;

@Service
public class MqService {
	@Autowired private MqDao mqDao;
	//회원 문의 등록
	public int insert(MqVo vo){
		return mqDao.insert(vo);
	}
	//회원 문의 삭제
	public int delete(int mq_num){
		return mqDao.delete(mq_num);
	}
	//회원 답변 후 상태
	public int update(MqVo vo){
		return mqDao.update(vo);
	}
	//회원 문의 조회
	public MqVo getInfO(int mq_num){
		return mqDao.getInfo(mq_num);
	}
	//회원 전체 문의 조회
	public List<MqVo> listAll(){
		return mqDao.listAll();
	}
}
