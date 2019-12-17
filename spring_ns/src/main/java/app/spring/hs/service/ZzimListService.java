package app.spring.hs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.ZzimListDao;
import app.spring.vo.ZzimListVo;

@Service
public class ZzimListService {
	@Autowired private ZzimListDao dao;
	
	public List<ZzimListVo> zzimlist(String m_phone){
		return dao.zzimlist(m_phone);
	}
}
