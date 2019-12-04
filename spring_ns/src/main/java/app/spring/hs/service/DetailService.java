package app.spring.hs.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.DetailDao;
import app.spring.hs.vo.DetailVo;



@Service
public class DetailService {
	@Autowired private DetailDao dao;
	public void setDao(DetailDao dao) {
		this.dao = dao;
	}
	public DetailVo finds(String name){
		return dao.finds(name);
	}
	public List<DetailVo> findlist(String name){
		return dao.findlist(name);
	}
	
}
