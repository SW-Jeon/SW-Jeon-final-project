package app.spring.sw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.MqDao;
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
	
	//회원 문의 답변 후 운영자답변 변경
	public int update(MqVo vo){
		return mqDao.update(vo);
	}
	
	//회원 문의 조회
	public MqVo getInfO(int mq_num){
		return mqDao.getInfo(mq_num);
	}
	//회원 전체 문의 조회 (운영자용)
	public List<MqVo> listAll(){
		return mqDao.listAll();
	}
	
	//회원문의 본인용
		public List<MqVo> listMy(String m_phone){
			return mqDao.listMy(m_phone);
	}
	//회원 상세내용
	public MqVo detail(int mq_num){
			return mqDao.detail(mq_num);
	}
}
