package app.spring.yg.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.vo.DetailVo;
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
}
