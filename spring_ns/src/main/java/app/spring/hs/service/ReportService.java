package app.spring.hs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.ReportDao;
import app.spring.vo.ReportVo;

@Service
public class ReportService {
	@Autowired private ReportDao dao;
	
	public int insert(ReportVo vo){
		return dao.insert(vo);
	}
}
