package app.spring.hs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.ReportDao;
import app.spring.vo.ReportNameVO;
import app.spring.vo.ReportVo;

@Service
public class ReportService {
	@Autowired private ReportDao Rdao;
	
	//신고하기
	public int insert(ReportVo vo){
		return Rdao.insert(vo);
	}
	//신고삭제
	public int delete(int re_num){
		return Rdao.delete(re_num);
	}
	
	//신고상태변경
	public int update(ReportVo vo){
		return Rdao.update(vo);
	}
	
	//신고조회하기
	public ReportVo getInfo(int re_num){
		return Rdao.getInfo(re_num);
	}
	
	//신고전체리스트
	public List<ReportVo> listAll(){
		return Rdao.listAll();
	}
	
	//신고3회이상 당한 업체 조회
	public List<ReportNameVO> getThree(){
		return Rdao.getThree();
	}
	
	//신고 3회이상 당한 업체 경고상태로 변경하기
	public int getUpdate(ReportVo vo){
		return Rdao.getUpdate(vo);
	}
}
