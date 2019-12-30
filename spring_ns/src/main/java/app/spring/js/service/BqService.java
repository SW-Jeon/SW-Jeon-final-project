package app.spring.js.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.BqDao;
import app.spring.vo.BqVo;
import app.spring.vo.DetailVo;
import app.spring.vo.MenuVo;

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
	public int getdnum(String b_phone){
		return bqDao.getdnum(b_phone);
	}
	public List<BqVo> alllist(int d_num){
		return bqDao.alllist(d_num);
	}
	//사업자 전체  문의 조회
	public List<BqVo> listAll(){
		return bqDao.listAll();
	}
	//사업자문의 본인용
	public List<BqVo> listBq(int b_phone){
		return bqDao.listBq(b_phone);
	}
	
	public BqVo detail(int bq_num){
		return bqDao.detail(bq_num);
	}
	//사업자 등록업체 조회
	public List<DetailVo> getbqlist(String b_phone){
		return bqDao.getbqlist(b_phone);
	}
	//사업자 메뉴등록
		public int  menuinsert(MenuVo vo){
			return bqDao.menuinsert(vo);
		}
}
