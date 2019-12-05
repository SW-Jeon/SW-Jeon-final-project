package app.spring.js.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.BusinessDao;
import app.spring.vo.BusinessVo;

@Service
public class BusinessService {
	@Autowired private BusinessDao bDao;
	
	public int insert(BusinessVo vo){
		return bDao.insert(vo);
	}
}
