package app.spring.js.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.PicuploadDao;
import app.spring.vo.PicuploadVo;

@Service
public class PicuploadService {
	@Autowired private PicuploadDao pDao;
	
	//사진 등록
	public int insert(PicuploadVo vo){
		return pDao.insert2(vo);
	}

}
