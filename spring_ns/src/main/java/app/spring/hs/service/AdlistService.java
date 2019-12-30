package app.spring.hs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.AdlistDao;
import app.spring.vo.AdlistVo;
import app.spring.vo.Criteria;

@Service
public class AdlistService {
	@Autowired private AdlistDao dao;
	public List<AdlistVo> adlist(){
		return dao.adlist();
	}
	public List<AdlistVo> adlist(Criteria cri){
		return dao.adlist(cri);
	}
	public int adcount(){
		return dao.adcount();
	}
}
