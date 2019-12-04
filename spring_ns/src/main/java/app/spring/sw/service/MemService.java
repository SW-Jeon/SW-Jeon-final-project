package app.spring.sw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.sw.dao.MemDao;
import app.spring.vo.MemVo;

@Service
public class MemService {
		@Autowired private MemDao mDao;
		
		public int insert(MemVo vo){
			return mDao.insert(vo);
		}
}
