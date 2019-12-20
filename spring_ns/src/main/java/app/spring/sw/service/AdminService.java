package app.spring.sw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.AdminDao;
import app.spring.vo.AdminVo;

@Service
public class AdminService {
	@Autowired AdminDao aDao;
	

	public boolean getInfo(AdminVo vo){
		return aDao.getInfo(vo);
	}
}
