package app.spring.yg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.vo.DetailVo;
import app.spring.yg.dao.SelectListDao;

@Service
public class SelectListService {
	@Autowired private SelectListDao dao;
	
	public List<DetailVo> searchList(String keyword){
		return dao.searchList(keyword);
	}
}
