package app.spring.yg.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.vo.DetailVo;
import app.spring.vo.FoodVo;
import app.spring.vo.SearchListVo;
import app.spring.yg.dao.SelectListDao;

@Service
public class SelectListService {
	@Autowired private SelectListDao dao;
	
	public List<SearchListVo> searchList(Map<String, Object>values){
		return dao.searchList(values);
	}
	
	public int increhit(int d_num){
		return dao.increhit(d_num);
	}
	public int recount(int d_num){
		return dao.recount(d_num);
	}
	public FoodVo checkfood(Map<String, Object>values){
		return dao.checkfood(values);
	}
	public int joinfood(Map<String, Object>values){
		return dao.joinfood(values);
	}
	public List<DetailVo>foodlist(String m_phone){
		return dao.foodlist(m_phone);
	}
	public int foodcount(String m_phone){
		return dao.foodcount(m_phone);
	}
	public int fooddelete(String m_phone){
		return dao.fooddelete(m_phone);
	}
}
