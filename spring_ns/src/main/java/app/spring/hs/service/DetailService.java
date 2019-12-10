package app.spring.hs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.DetailDao;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;

@Service
public class DetailService {
	@Autowired private DetailDao dao;
	public void setDao(DetailDao dao) {
		this.dao = dao;
	}
	
	public DetailVo finds(String d_sname){
		return dao.finds(d_sname);
	}
	
	public List<DetailVo> findlist(String d_sname){
		return dao.findlist(d_sname);
	}

	public List<DetailVo> finddetail(String d_sname){
		return dao.finddetail(d_sname);
	}
	public List<FindimgVo> findimg(String d_sname){
		return dao.findimg(d_sname);
	}
	public List<FindmenuVo> findmenu(String d_sname){
		return dao.findmenu(d_sname);
	}



}