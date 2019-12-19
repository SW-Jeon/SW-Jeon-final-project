package app.spring.sw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.AdminDao;

@Service
public class AdminService {
	@Autowired AdminDao aDao;
	

	public boolean getInfo(String a_id){
		return aDao.getInfo(a_id);
	}
}
